import 'package:material_toolkit/material_toolkit.dart';

class XPadding extends StatelessWidget {
  final XEdgeInsets? xPadding;
  final EdgeInsets? padding;
  final Widget? child;

  const XPadding({
    required this.xPadding,
    super.key,
    this.child,
  }) : padding = null;

  const XPadding.custom({
    required this.padding,
    super.key,
    this.child,
  }) : xPadding = null;

  @override
  Widget build(BuildContext context) {
    final XSpacingData xSpacing =
        Theme.of(context).extension<XMetricsData>()!.xSpacing;

    return Padding(
      padding:
          xPadding?.toEdgeInsets(xSpacing) ?? this.padding ?? EdgeInsets.zero,
      child: child,
    );
  }
}