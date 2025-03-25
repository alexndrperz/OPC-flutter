import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(expandedHeight: Theme.of(context).colorScheme.surface);
  }
}
