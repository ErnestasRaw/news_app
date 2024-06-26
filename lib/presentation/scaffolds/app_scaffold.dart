import 'package:flutter/material.dart';
import 'package:news_app/core/config/theme/sizes.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.title,
    required this.body,
  });

  final String? title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'NewsApp'),
      ),
      body: Padding(
        padding: Sizes.pageMargins,
        child: body,
      ),
    );
  }
}
