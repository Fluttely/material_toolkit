// import 'package:flutter/material.dart';
import 'package:material_toolkit/material_toolkit.dart';

class XEdgeInsets {
  XEdgeInsets();

  EdgeInsets get allExtraLarge => const EdgeInsets.all(25);

  EdgeInsets get horizontalExtraLarge => const EdgeInsets.all(25);
}


extension XEdgeInsetsSizesDataExtension on XEdgeInsetsSizesData {
  EdgeInsets get card => allExtraLarge;
}

extension XEdgeInsetsFoundation on XEdgeInsetsTokens {
  static EdgeInsets get card => XEdgeInsetsTokens.allExtraLarge;
}
