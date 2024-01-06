// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class XMaterialApp extends GetMaterialApp {
//   // final GlobalKey<NavigatorState>? navigatorKey;
//   // final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
//   // final Widget? home;
//   // final Map<String, WidgetBuilder>? routes;
//   // final String? initialRoute;
//   // final RouteFactory? onGenerateRoute;
//   // final InitialRouteListFactory? onGenerateInitialRoutes;
//   // final RouteFactory? onUnknownRoute;
//   // final List<NavigatorObserver>? navigatorObservers;
//   // final TransitionBuilder? builder;
//   // final String title;
//   // final GenerateAppTitle? onGenerateTitle;
//   // final ThemeData? theme;
//   // final ThemeData? darkTheme;
//   // final ThemeMode themeMode;
//   // final CustomTransition? customTransition;
//   // final Color? color;
//   // final Map<String, Map<String, String>>? translationsKeys;
//   // final Translations? translations;
//   // final TextDirection? textDirection;
//   // final Locale? locale;
//   // final Locale? fallbackLocale;
//   // final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
//   // final LocaleListResolutionCallback? localeListResolutionCallback;
//   // final LocaleResolutionCallback? localeResolutionCallback;
//   // final Iterable<Locale> supportedLocales;
//   // final bool showPerformanceOverlay;
//   // final bool checkerboardRasterCacheImages;
//   // final bool checkerboardOffscreenLayers;
//   // final bool showSemanticsDebugger;
//   // final bool debugShowCheckedModeBanner;
//   // final Map<LogicalKeySet, Intent>? shortcuts;
//   // final ScrollBehavior? scrollBehavior;
//   // final ThemeData? highContrastTheme;
//   // final ThemeData? highContrastDarkTheme;
//   // final Map<Type, Action<Intent>>? actions;
//   // final bool debugShowMaterialGrid;
//   // final ValueChanged<Routing?>? routingCallback;
//   // final Transition? defaultTransition;
//   // final bool? opaqueRoute;
//   // final VoidCallback? onInit;
//   // final VoidCallback? onReady;
//   // final VoidCallback? onDispose;
//   // final bool? enableLog;
//   // final LogWriterCallback? logWriterCallback;
//   // final bool? popGesture;
//   // final SmartManagement smartManagement;
//   // final Bindings? initialBinding;
//   // final Duration? transitionDuration;
//   // final bool? defaultGlobalState;
//   // final List<GetPage>? getPages;
//   // final GetPage? unknownRoute;
//   // final RouteInformationProvider? routeInformationProvider;
//   // final RouteInformationParser<Object>? routeInformationParser;
//   // final RouterDelegate<Object>? routerDelegate;
//   // final BackButtonDispatcher? backButtonDispatcher;
//   // final bool useInheritedMediaQuery;

//   const XMaterialApp({
//     super.key,
//     super.navigatorKey,
//     super.scaffoldMessengerKey,
//     super.home,
//     super.routes = const <String, WidgetBuilder>{},
//     super.initialRoute,
//     super.onGenerateRoute,
//     super.onGenerateInitialRoutes,
//     super.onUnknownRoute,
//     super.useInheritedMediaQuery = false,
//     super.navigatorObservers = const <NavigatorObserver>[],
//     super.builder,
//     super.textDirection,
//     super.title = '',
//     super.onGenerateTitle,
//     super.color,
//     super.theme,
//     super.darkTheme,
//     super.themeMode = ThemeMode.system,
//     super.locale,
//     super.fallbackLocale,
//     super.localizationsDelegates,
//     super.localeListResolutionCallback,
//     super.localeResolutionCallback,
//     super.supportedLocales = const <Locale>[Locale('en', 'US')],
//     super.debugShowMaterialGrid = false,
//     super.showPerformanceOverlay = false,
//     super.checkerboardRasterCacheImages = false,
//     super.checkerboardOffscreenLayers = false,
//     super.showSemanticsDebugger = false,
//     super.debugShowCheckedModeBanner = true,
//     super.shortcuts,
//     super.scrollBehavior,
//     super.customTransition,
//     super.translationsKeys,
//     super.translations,
//     super.onInit,
//     super.onReady,
//     super.onDispose,
//     super.routingCallback,
//     super.defaultTransition,
//     super.getPages,
//     super.opaqueRoute,
//     super.enableLog = kDebugMode,
//     super.logWriterCallback,
//     super.popGesture,
//     super.transitionDuration,
//     super.defaultGlobalState,
//     super.smartManagement,
//     super.initialBinding,
//     super.unknownRoute,
//     super.highContrastTheme,
//     super.highContrastDarkTheme,
//     super.actions,
//   });

//   XMaterialApp.router({super.key, 
//     GlobalKey<NavigatorState>? navigatorKey,
//     GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
//     Widget? home,
//     Map<String, WidgetBuilder>? routes,
//     String? initialRoute,
//     RouteFactory? onGenerateRoute,
//     InitialRouteListFactory? onGenerateInitialRoutes,
//     RouteFactory? onUnknownRoute,
//     List<NavigatorObserver>? navigatorObservers,
//     TransitionBuilder? builder,
//     required String title,
//     GenerateAppTitle? onGenerateTitle,
//     ThemeData? theme,
//     ThemeData? darkTheme,
//    required ThemeMode themeMode,
//     CustomTransition? customTransition,
//     Color? color,
//     Map<String, Map<String, String>>? translationsKeys,
//     Translations? translations,
//     TextDirection? textDirection,
//     Locale? locale,
//     Locale? fallbackLocale,
//     Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
//     LocaleListResolutionCallback? localeListResolutionCallback,
//     LocaleResolutionCallback? localeResolutionCallback,
//     Iterable<Locale> supportedLocales,
//     bool showPerformanceOverlay,
//     bool checkerboardRasterCacheImages,
//     bool checkerboardOffscreenLayers,
//     bool showSemanticsDebugger,
//     bool debugShowCheckedModeBanner,
//     Map<LogicalKeySet, Intent>? shortcuts,
//     ScrollBehavior? scrollBehavior,
//     ThemeData? highContrastTheme,
//     ThemeData? highContrastDarkTheme,
//     Map<Type, Action<Intent>>? actions,
//     bool debugShowMaterialGrid,
//     ValueChanged<Routing?>? routingCallback,
//     Transition? defaultTransition,
//     bool? opaqueRoute,
//     VoidCallback? onInit,
//     VoidCallback? onReady,
//     VoidCallback? onDispose,
//     bool? enableLog,
//     LogWriterCallback? logWriterCallback,
//     bool? popGesture,
//    required SmartManagement smartManagement,
//     Bindings? initialBinding,
//     Duration? transitionDuration,
//     bool? defaultGlobalState,
//     List<GetPage>? getPages,
//     GetPage? unknownRoute,
//     RouteInformationProvider? routeInformationProvider,
//     RouteInformationParser<Object>? routeInformationParser,
//     RouterDelegate<Object>? routerDelegate,
//     BackButtonDispatcher? backButtonDispatcher,
//     bool useInheritedMediaQuery,
//     // super.key,
//     // super.routeInformationProvider,
//     // super.scaffoldMessengerKey,
//     // RouteInformationParser<Object>? routeInformationParser,
//     // RouterDelegate<Object>? routerDelegate,
//     // super.backButtonDispatcher,
//     // super.builder,
//     // super.title = '',
//     // super.onGenerateTitle,
//     // super.color,
//     // super.theme,
//     // super.darkTheme,
//     // super.useInheritedMediaQuery = false,
//     // super.highContrastTheme,
//     // super.highContrastDarkTheme,
//     // super.themeMode = ThemeMode.system,
//     // super.locale,
//     // super.localizationsDelegates,
//     // super.localeListResolutionCallback,
//     // super.localeResolutionCallback,
//     // super.supportedLocales = const <Locale>[Locale('en', 'US')],
//     // super.debugShowMaterialGrid = false,
//     // super.showPerformanceOverlay = false,
//     // super.checkerboardRasterCacheImages = false,
//     // super.checkerboardOffscreenLayers = false,
//     // super.showSemanticsDebugger = false,
//     // super.debugShowCheckedModeBanner = true,
//     // super.shortcuts,
//     // super.scrollBehavior,
//     // super.actions,
//     // super.customTransition,
//     // super.translationsKeys,
//     // super.translations,
//     // super.textDirection,
//     // super.fallbackLocale,
//     // super.routingCallback,
//     // super.defaultTransition,
//     // super.opaqueRoute,
//     // super.onInit,
//     // super.onReady,
//     // super.onDispose,
//     // super.enableLog = kDebugMode,
//     // super.logWriterCallback,
//     // super.popGesture,
//     // super.smartManagement = SmartManagement.full,
//     // super.initialBinding,
//     // super.transitionDuration,
//     // super.defaultGlobalState,
//     // super.getPages,
//     // super.navigatorObservers,
//     // super.unknownRoute,
//   }) : super.router(
//           routeInformationProvider: routeInformationProvider,
//           routeInformationParser: routeInformationParser,
//           routerDelegate: routerDelegate,
//           backButtonDispatcher: backButtonDispatcher,
//           builder: builder,
//           title: title,
//           onGenerateTitle: onGenerateTitle,
//           color: color,
//           theme: theme,
//           darkTheme: darkTheme,
//           highContrastTheme: highContrastTheme,
//           highContrastDarkTheme: highContrastDarkTheme,
//           themeMode: themeMode,
//           localizationsDelegates: localizationsDelegates,
//           supportedLocales: supportedLocales,
//           debugShowMaterialGrid: debugShowMaterialGrid,
//           showPerformanceOverlay: showPerformanceOverlay,
//           checkerboardRasterCacheImages: checkerboardRasterCacheImages,
//           checkerboardOffscreenLayers: checkerboardOffscreenLayers,
//           showSemanticsDebugger: showSemanticsDebugger,
//           debugShowCheckedModeBanner: debugShowCheckedModeBanner,
//           shortcuts: shortcuts,
//           scrollBehavior: scrollBehavior,
//           actions: actions,
//           useInheritedMediaQuery: useInheritedMediaQuery,
//           locale: locale,
//           localeListResolutionCallback: localeListResolutionCallback,
//           localeResolutionCallback: localeResolutionCallback,
//           fallbackLocale: fallbackLocale,
//           scaffoldMessengerKey: scaffoldMessengerKey,
//         );
//   // @override
//   // Widget build(BuildContext context) => GetBuilder<GetMaterialController>(
//   //       init: Get.rootController,
//   //       dispose: (d) {
//   //         onDispose?.call();
//   //       },
//   //       initState: (i) {
//   //         Get.engine.addPostFrameCallback((timeStamp) {
//   //           onReady?.call();
//   //         });
//   //         if (locale != null) Get.locale = locale;

//   //         if (fallbackLocale != null) Get.fallbackLocale = fallbackLocale;

//   //         if (translations != null) {
//   //           Get.addTranslations(translations!.keys);
//   //         } else if (translationsKeys != null) {
//   //           Get.addTranslations(translationsKeys!);
//   //         }

//   //         Get.customTransition = customTransition;

//   //         initialBinding?.dependencies();
//   //         if (getPages != null) {
//   //           Get.addPages(getPages!);
//   //         }

//   //         //Get.setDefaultDelegate(routerDelegate);
//   //         Get.smartManagement = smartManagement;
//   //         onInit?.call();

//   //         Get.config(
//   //           enableLog: enableLog ?? Get.isLogEnable,
//   //           logWriterCallback: logWriterCallback,
//   //           defaultTransition: defaultTransition ?? Get.defaultTransition,
//   //           defaultOpaqueRoute: opaqueRoute ?? Get.isOpaqueRouteDefault,
//   //           defaultPopGesture: popGesture ?? Get.isPopGestureEnable,
//   //           defaultDurationTransition:
//   //               transitionDuration ?? Get.defaultTransitionDuration,
//   //         );
//   //       },
//   //       builder: (_) => routerDelegate != null
//   //           ? MaterialApp.router(
//   //               routerDelegate: routerDelegate!,
//   //               routeInformationParser: routeInformationParser!,
//   //               backButtonDispatcher: backButtonDispatcher,
//   //               routeInformationProvider: routeInformationProvider,
//   //               key: _.unikey,
//   //               builder: defaultBuilder,
//   //               title: title,
//   //               onGenerateTitle: onGenerateTitle,
//   //               color: color,
//   //               theme: _.theme ?? theme ?? ThemeData.fallback(),
//   //               darkTheme:
//   //                   _.darkTheme ?? darkTheme ?? theme ?? ThemeData.fallback(),
//   //               themeMode: _.themeMode ?? themeMode,
//   //               locale: Get.locale ?? locale,
//   //               scaffoldMessengerKey:
//   //                   scaffoldMessengerKey ?? _.scaffoldMessengerKey,
//   //               localizationsDelegates: localizationsDelegates,
//   //               localeListResolutionCallback: localeListResolutionCallback,
//   //               localeResolutionCallback: localeResolutionCallback,
//   //               supportedLocales: supportedLocales,
//   //               debugShowMaterialGrid: debugShowMaterialGrid,
//   //               showPerformanceOverlay: showPerformanceOverlay,
//   //               checkerboardRasterCacheImages: checkerboardRasterCacheImages,
//   //               checkerboardOffscreenLayers: checkerboardOffscreenLayers,
//   //               showSemanticsDebugger: showSemanticsDebugger,
//   //               debugShowCheckedModeBanner: debugShowCheckedModeBanner,
//   //               shortcuts: shortcuts,
//   //               scrollBehavior: scrollBehavior,
//   //               // useInheritedMediaQuery: useInheritedMediaQuery,
//   //             )
//   //           : MaterialApp(
//   //               key: _.unikey,
//   //               navigatorKey: (navigatorKey == null
//   //                   ? Get.key
//   //                   : Get.addKey(navigatorKey!)),
//   //               scaffoldMessengerKey:
//   //                   scaffoldMessengerKey ?? _.scaffoldMessengerKey,
//   //               home: home,
//   //               routes: routes ?? const <String, WidgetBuilder>{},
//   //               initialRoute: initialRoute,
//   //               onGenerateRoute:
//   //                   (getPages != null ? generator : onGenerateRoute),
//   //               onGenerateInitialRoutes: (getPages == null || home != null)
//   //                   ? onGenerateInitialRoutes
//   //                   : initialRoutesGenerate,
//   //               onUnknownRoute: onUnknownRoute,
//   //               navigatorObservers: (navigatorObservers == null
//   //                   ? <NavigatorObserver>[
//   //                       GetObserver(routingCallback, Get.routing)
//   //                     ]
//   //                   : <NavigatorObserver>[
//   //                       GetObserver(routingCallback, Get.routing)
//   //                     ]
//   //                 ..addAll(navigatorObservers!)),
//   //               builder: defaultBuilder,
//   //               title: title,
//   //               onGenerateTitle: onGenerateTitle,
//   //               color: color,
//   //               theme: _.theme ?? theme ?? ThemeData.fallback(),
//   //               darkTheme:
//   //                   _.darkTheme ?? darkTheme ?? theme ?? ThemeData.fallback(),
//   //               themeMode: _.themeMode ?? themeMode,
//   //               locale: Get.locale ?? locale,
//   //               localizationsDelegates: localizationsDelegates,
//   //               localeListResolutionCallback: localeListResolutionCallback,
//   //               localeResolutionCallback: localeResolutionCallback,
//   //               supportedLocales: supportedLocales,
//   //               debugShowMaterialGrid: debugShowMaterialGrid,
//   //               showPerformanceOverlay: showPerformanceOverlay,
//   //               checkerboardRasterCacheImages: checkerboardRasterCacheImages,
//   //               checkerboardOffscreenLayers: checkerboardOffscreenLayers,
//   //               showSemanticsDebugger: showSemanticsDebugger,
//   //               debugShowCheckedModeBanner: debugShowCheckedModeBanner,
//   //               shortcuts: shortcuts,
//   //               scrollBehavior: scrollBehavior,
//   //               // useInheritedMediaQuery: useInheritedMediaQuery,
//   //               //   actions: actions,
//   //             ),
//   //     );

//   // Widget defaultBuilder(BuildContext context, Widget? child) {
//   //   return Directionality(
//   //     textDirection: textDirection ??
//   //         (rtlLanguages.contains(Get.locale?.languageCode)
//   //             ? TextDirection.rtl
//   //             : TextDirection.ltr),
//   //     child: builder == null
//   //         ? (child ?? const Material())
//   //         : builder!(context, child ?? const Material()),
//   //   );
//   // }

//   // Route<dynamic> generator(RouteSettings settings) {
//   //   return PageRedirect(settings: settings, unknownRoute: unknownRoute).page();
//   // }

//   // List<Route<dynamic>> initialRoutesGenerate(String name) {
//   //   return [
//   //     PageRedirect(
//   //       settings: RouteSettings(name: name),
//   //       unknownRoute: unknownRoute,
//   //     ).page()
//   //   ];
//   // }
// }
