// import 'package:example/example.dart';
// import 'package:material_toolkit/material_toolkit.dart';

// // class XThemeData {
// //   final XMetricsData metrics;
// // }

// ThemeData get theme => ThemeData(
//       // brightness: Brightness.dark,
//       colorScheme: ColorScheme.fromSeed(
//         seedColor: Colors.orange,
//         brightness: Brightness.dark,
//       ).copyWith(
//           // background: Colors.blue,
//           // brightness: Brightness.dark,
//           ),
//       iconTheme: const IconThemeData(
//           // size: MaterialX.of(MaterialX.context).metrics!.iconSizes.medium,
//           ),
//     );

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//         // MaterialX(

//         //   theme: theme,
//         //   metrics: XMetricsData(
//         //     spacing: XSpacingsData(
//         //       extraLarge: 10,
//         //       large: 10,
//         //       medium: 10,
//         //       small: 10,
//         //     ),
//         //   ),
//         //   child:
//         const App()
//         // )
//         ;
//   }
// }

// // final GlobalKey<ScaffoldState> materialXKey = GlobalKey<ScaffoldState>();
// // final GlobalKey<NavigatorState> materialXKey = GlobalKey<NavigatorState>();

// // BuildContext get globalContext => materialXKey.currentContext!;
// class App extends StatelessWidget {
//   const App({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialX(
//       // theme: theme,
//       metrics: XMetricsData(
//         spacing: XSpacingsData(
//           extraLarge: 100,
//           large: 100,
//           medium: 100,
//           small: 100,
//         ),
//       ),
//       child: MaterialApp(
//         key: MaterialX.globalKey,
//         theme: theme,
//         // builder: (context, child) {
//         //   // BuildContext context2 = materialXKey.currentState!.context;
//         //   return SizedBox(
//         //     key: materialXKey,
//         //     child: child,
//         //   );
//         // },
//         home: const HomePage(),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: XColor.background(),
//       body: ListView(children: [
//         const AppCard(),
//         XCard(
//           // color: Colors.red,
//           elevation: 10,
//           child: XPadding(
//             padding: AppEdgeInsets3.card2,
//             child: const Text('ASDIUHSADUHAS'),
//           ),
//         ),
//         const AppListTile(),
//         const Card(
//           child: Text('asda'),
//         ),
//         XIcon.x16(
//           Icons.menu,
//         ),
//         Icon(
//           Icons.menu,
//           size: 24,
//           color: XColor.tertiary(),
//         ),
//         AppIcon.bottomNavigation(Icons.menu),
//       ]),
//     );
//   }
// }

// class AppListTile extends StatelessWidget {
//   const AppListTile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: AppIcon.bottomNavigation(
//         Icons.menu,
//       ),
//     );
//   }
// }

// class AppCard extends StatelessWidget {
//   const AppCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // final mX = MaterialX.context;

//     return XPadding.allExtraLarge(
//       child: Container(
//         color: XColor.error(),
//         margin: XEdgeInsets.card2,
//         padding: AppEdgeInsets3.card2,
//         // child: AppText.ada('Hello World 1!'),
//       ),
//     );
//   }
// }

// // class XCard extends StatelessWidget {
// //   const XCard({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     final mX = MaterialX.context;

// //     return XPadding.allExtraLarge(
// //       child: Container(
// //         color: Colors.red,
// //         margin: XEdgeInsets.allLarge(),
// //         padding: XEdgeInsets.allExtraLarge(),
// //         child: XPadding(
// //           padding: XEdgeInsets.all(mX.metrics.spacing.extraLarge),
// //           child: XText(
// //             'Hello World! 2',
// //             style: mX.theme.textTheme.bodyLarge,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// extension AppEdgeInsets3 on XEdgeInsets {
//   static XEdgeInsets get card2 => XEdgeInsets.allExtraLarge();
// }
