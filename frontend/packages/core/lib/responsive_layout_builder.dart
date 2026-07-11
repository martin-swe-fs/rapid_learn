import 'package:flutter/widgets.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  static const double minDesktopWidth = 724;

  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayoutBuilder({
    required this.mobile,
    required this.desktop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= minDesktopWidth) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
