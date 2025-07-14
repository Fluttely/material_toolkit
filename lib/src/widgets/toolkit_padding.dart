import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

enum _PaddingType {
  none,
  all,
  symmetric,
  only,
}

class ToolkitPadding extends StatelessWidget {
  const ToolkitPadding.all({
    required this.value,
    this.child,
    super.key,
  }) : type = _PaddingType.all,
       vertical = null,
       horizontal = null,
       left = null,
       top = null,
       right = null,
       bottom = null;

  const ToolkitPadding.symmetric({
    this.vertical,
    this.horizontal,
    this.child,
    super.key,
  }) : type = _PaddingType.symmetric,
       value = null,
       left = null,
       top = null,
       right = null,
       bottom = null;

  const ToolkitPadding.only({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.child,
    super.key,
  }) : type = _PaddingType.only,
       value = null,
       vertical = null,
       horizontal = null;

  const ToolkitPadding.none({
    this.child,
    super.key,
  }) : type = _PaddingType.none,
       value = null,
       vertical = null,
       horizontal = null,
       left = null,
       top = null,
       right = null,
       bottom = null;

  final _PaddingType type;

  final SpacingToken? value;
  final SpacingToken? vertical;
  final SpacingToken? horizontal;
  final SpacingToken? left;
  final SpacingToken? top;
  final SpacingToken? right;
  final SpacingToken? bottom;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final spacings = tokens.spacings;
    final resolver = EdgeInsetsResolver(spacings);

    EdgeInsets padding = switch (type) {
      _PaddingType.none => resolver.none,
      _PaddingType.all => resolver.all(value!),
      _PaddingType.symmetric => resolver.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      _PaddingType.only => resolver.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
    };

    return Padding(
      padding: padding,
      child: child,
    );
  }
}
