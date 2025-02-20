import 'package:flutter/material.dart';
import 'components/path_page_content.dart';
import 'components/path_page_shimmer.dart';

class PathPage extends StatefulWidget {
  const PathPage({super.key});

  @override
  State<PathPage> createState() => _PathPageState();
}

class _PathPageState extends State<PathPage> {
  dynamic data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Simulate data fetching
      await Future.delayed(Duration(seconds: 2));
      if (mounted) {
        setState(() {
          data = 'map data'; // Replace with actual data fetching logic
        });
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    Widget content = PathPageShimmer();
    if (data != null) {
      content = PathPageContent();
    }
    return Scaffold(
      body: Stack(
        children: [content],
      ),
    );
  }
}
