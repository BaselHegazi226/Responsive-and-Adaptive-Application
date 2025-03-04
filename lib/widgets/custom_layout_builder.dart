import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return desktopLayout(context);
        } else if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else {
          return tabletLayout(context);
        }
      },
    );
  }
}
