// import 'package:flutter/material.dart';

import 'package:material_toolkit/material_toolkit.dart';

class CustomEdgeInsets extends XEdgeInsets {
  CustomEdgeInsets.cardMargin() : super.allLarge();
  CustomEdgeInsets.cardPadding() : super.allExtraLarge();
}

class CustomEdgeInsets2 {
  static EdgeInsets get cardMargin => XEdgeInsets.allLarge();
  static EdgeInsets get cardPadding => XEdgeInsets.allExtraLarge();
}

extension CustomEdgeInsets3 on XEdgeInsets {
  EdgeInsets get card => haha2();
  static EdgeInsets get card2 => XEdgeInsets.allExtraLarge();
}
