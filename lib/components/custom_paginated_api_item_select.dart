import 'package:nafarat/data/models/_models.dart';
import 'package:nafarat/paging/pagination_controller.dart';
import 'package:nafarat/paging/paging_list_delegate.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../common_lib.dart';
import 'custom_text_form_field.dart';

class CustomPaginatedApiItemSelect<ItemType> extends HookConsumerWidget {
  const CustomPaginatedApiItemSelect({
    super.key,
    required this.function,
    required this.labelText,
    required this.controller,
    required this.validator,
    this.onChanged,
    this.prefixIcon,
    this.enabled,
  });

  final String labelText;
  final dynamic validator;
  final TextEditingController controller;

  final String? prefixIcon;
  final FuturePaginatedResponse Function(String search, int page) function;
  final Function(ItemType)? onChanged;
  final bool? enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = useState(''); // Holds search query
    final pagingController = usePagingController(
      listen: (pageKey) async => await function(searchQuery.value, pageKey).data,
    );

    return TextFormField(
      enabled: enabled ?? true,
      readOnly: true,
      decoration: CustomInputDecoration(
          labelText: labelText, prefixIcon: prefixIcon, context: context),
      controller: controller,
      validator: validator,
      onChanged: (value) {
        searchQuery.value = value;
        pagingController.refresh();
      },
      onTap: () async {
        ItemType result = await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: context.theme.colorScheme.surface,
            showDragHandle: true,
            context: context,
            builder: (context) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(CustomBorderTheme.normalBorderRadius))),
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom + Insets.medium,
                    right: Insets.medium,
                    left: Insets.medium,
                  ),
                  child: SizedBox(
                    height: context.height * 0.5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: CustomInputDecoration(
                            isTextField: true,
                            labelText: 'بحث',
                            prefixIcon: null,
                            context: context,
                          ),
                          onChanged: (value) {
                            searchQuery.value = value; // Update search query
                            pagingController.refresh(); // Refresh list
                          },
                        ),
                        SizedBox(height: Insets.small),
                        Expanded(
                          child: PagedListView(
                            pagingController: pagingController,
                            builderDelegate: defaultListPagedChildBuilderDelegate(
                              context: context,
                              controller: pagingController,
                              itemBuilder: (context, governorate, index) => ListTile(
                                title: Text(governorate.name),
                                onTap: () {
                                  controller.text = governorate.name;
                                  Navigator.of(context).pop(governorate);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
        if (onChanged != null) {
          onChanged!(result);
        }
      },
    );
  }
}
