import 'package:material_toolkit/material_toolkit.dart';

class AppEdgeInsets extends XEdgeInsets {
  AppEdgeInsets.cardMargin(BuildContext context) : super.allLarge(context);
  AppEdgeInsets.cardPadding(BuildContext context)
      : super.allExtraLarge(context);
}