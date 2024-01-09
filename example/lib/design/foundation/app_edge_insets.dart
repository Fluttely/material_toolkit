import 'package:material_toolkit/material_toolkit.dart';

class AppEdgeInsets extends XEdgeInsets {
  AppEdgeInsets.cardMargin(BuildContext context) : super.allLarge(context);
  AppEdgeInsets.cardPadding(BuildContext context)
      : super.allExtraLarge(context);
}

// // extension AppEdgeInsets3 on XEdgeInsets {
// //   // EdgeInsets get card => haha2();
// //   static XEdgeInsets get card2 => XEdgeInsets.allExtraLarge();
// // }

// extension AppEdgeInsets3 on XEdgeInsets {
//   static XEdgeInsets get card2 => XEdgeInsets.allExtraLarge();
// }
