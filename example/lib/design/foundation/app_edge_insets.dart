import 'package:material_toolkit/material_toolkit.dart';

class AppEdgeInsets extends XEdgeInsets {
  AppEdgeInsets.cardMargin() : super.allLarge();
  AppEdgeInsets.cardPadding() : super.allExtraLarge();
}

class AppEdgeInsets2 {
  static EdgeInsets get cardMargin => XEdgeInsets.allLarge();
  static EdgeInsets get cardPadding => XEdgeInsets.allExtraLarge();
}

extension AppEdgeInsets3 on XEdgeInsets {
  EdgeInsets get card => haha2();
  static EdgeInsets get card2 => XEdgeInsets.allExtraLarge();
}
