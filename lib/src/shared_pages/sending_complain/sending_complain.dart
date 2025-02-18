import 'package:flutter/material.dart';

import '../../../common_lib.dart';
import '../../../components/custom_app_bar.dart';
import '../../../components/custom_elevated_button.dart';
import '../../../components/custom_paginated_api_item_select.dart';
import '../../../components/custom_text_form_field.dart';
import '../../../data/models/vehicle_violations.dart';
import '../../../data/services/clients/auth_client.dart';

class SendingComplainPage extends StatefulHookConsumerWidget {
  const SendingComplainPage({
    super.key,
    required this.isFromProfile,
    this.debtStatementReceipt,
  });
  final bool isFromProfile;
  final Violation? debtStatementReceipt;

  @override
  ConsumerState<SendingComplainPage> createState() => _SendingComplainPageState();
}

class _SendingComplainPageState extends ConsumerState<SendingComplainPage> {
  final complainTypeController = TextEditingController();
  TextEditingController complainController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int textLength = 0;
  void countTextLength(String query) {
    setState(() {
      textLength = query.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    var isLoading = useState<bool>(false);
    void send() async {
      if (_formKey.currentState!.validate()) {
        isLoading.value = true;
        await Future.delayed((Duration(seconds: 2)));
        if (widget.isFromProfile) {
          print('Its from profile');
        } else {
          print('Its not from profile');
        }
        context.showSuccessSnackBar('تم ارسال الشكوى بنجاح');
        context.pop();
      }
      isLoading.value = false;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: widget.isFromProfile ? 'تقديم شكوى ' : 'شكوى غرامية',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.medium, vertical: Insets.medium),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!widget.isFromProfile)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'غرامة ${widget.debtStatementReceipt!.number}#',
                      style: TextStyle(
                        fontSize: CustomFontsTheme.bigSize,
                      ),
                    ),
                    SizedBox(width: Insets.exSmall),
                    Text(
                      widget.debtStatementReceipt!.creationDate.format(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              SizedBox(height: Insets.medium),
              if (!widget.isFromProfile) Text('لقد حصلت على غرامة بسبب لايوجد'),
              if (!widget.isFromProfile) SizedBox(height: Insets.medium),
              if (!widget.isFromProfile)
                Text(
                  'قيمة الغرامة: ${widget.debtStatementReceipt!.totalAmount}',
                  style: TextStyle(
                    fontSize: CustomFontsTheme.bigSize,
                  ),
                ),
              if (widget.isFromProfile)
                CustomPaginatedApiItemSelect(
                    labelText: 'أختر نوع الشكوى',
                    controller: complainTypeController,
                    function: (String search, int page) =>
                        ref.read(authClientProvider).getGovernorates(
                              name: search,
                              pageNumber: page,
                            ),
                    validator: context.validator.build()),
              if (!widget.isFromProfile) SizedBox(height: Insets.exLarge),
              if (widget.isFromProfile) Gap(Insets.medium),
              CustomAppTextFormField(
                prefixIcon: Assets.assetsIconsNotePencil,
                onChanged: countTextLength,
                maxLines: 5,
                controller: complainController,
                labelText: 'الملاحظات',
                validator: context.validator.build(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '( $textLength / 100 )',
                    style: TextStyle(
                        color: textLength > 100
                            ? Theme.of(context).colorScheme.error
                            : null),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: isLoading.value ? null : send,
                child: isLoading.value
                    ? CircularProgressIndicator.adaptive()
                    : ElevatedButtonChild(
                        text: 'أرسال الشكوى', icon: Assets.assetsIconsReciept3),
              ),
              SizedBox(height: Insets.medium),
            ],
          ),
        ),
      ),
    );
  }
}
