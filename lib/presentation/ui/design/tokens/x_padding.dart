import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets {
  final XSizesTokens left;
  final XSizesTokens top;
  final XSizesTokens right;
  final XSizesTokens bottom;

  const XEdgeInsets.all(XSizesTokens value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const XEdgeInsets.symmetric({
    XSizesTokens vertical = XSizesTokens.none,
    XSizesTokens horizontal = XSizesTokens.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const XEdgeInsets.only({
    this.left = XSizesTokens.none,
    this.top = XSizesTokens.none,
    this.right = XSizesTokens.none,
    this.bottom = XSizesTokens.none,
  });

  EdgeInsets toEdgeInsets(XMetricsData theme) {
    return EdgeInsets.only(
      left: left.toDouble(theme),
      top: top.toDouble(theme),
      right: right.toDouble(theme),
      bottom: bottom.toDouble(theme),
    );
  }
}

class XPadding extends StatelessWidget {
  final XEdgeInsets padding;
  final Widget? child;

  const XPadding({
    Key? key,
    required this.padding,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mX = MaterialX.of(context);

    return Padding(
      padding: padding.toEdgeInsets(mX.metrics),
      child: child,
    );
  }
}


// class XPadding extends StatelessWidget {
//   final XEdgeInsets padding;
//   final Widget? child;

//   const XPadding({
//     required this.padding,
//     super.key,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).data;
//     return Padding(
//       padding: padding.toEdgeInsets(theme),
//       child: child,
//     );
//   }
// }
