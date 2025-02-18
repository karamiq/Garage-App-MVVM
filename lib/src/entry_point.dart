import 'package:app/common_lib.dart';
import 'package:flutter/material.dart';

import '../components/custom_botton_app_bar.dart';

class TapsPage extends StatefulWidget {
  const TapsPage({super.key, required this.child});
  final Widget child;

  @override
  State<TapsPage> createState() => _TapsPageState();
}

class _TapsPageState extends State<TapsPage> {
  int pageIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      // selectedPageIndex = index;
      pageIndex = index;
    });
    context.push(_pages[index]);
  }

  // int selectedPageIndex = 0;
  double slideSize = 0;
  final List<String> _pages = [
    Routes.home,
    Routes.cardPage,
    Routes.pathPage,
    Routes.veichlesPage
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: CustomBottomAppBar(
        selectedPage: _selectedPage,
        selectedPageIndex: pageIndex,
      ),
      body: SafeArea(child: widget.child),
    );
  }
}
