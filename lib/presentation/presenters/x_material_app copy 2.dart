// import 'package:flutter/foundation.dart';
// import 'package:get/instance_manager.dart';
// import 'package:material_toolkit/material_toolkit.dart';

// class XMaterialApp extends StatelessWidget {
//   final GlobalKey<NavigatorState>? navigatorKey;
//   final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
//   final Widget? home;
//   final Map<String, WidgetBuilder>? routes;
//   final String? initialRoute;
//   final RouteFactory? onGenerateRoute;
//   final InitialRouteListFactory? onGenerateInitialRoutes;
//   final RouteFactory? onUnknownRoute;
//   final List<NavigatorObserver>? navigatorObservers;
//   final TransitionBuilder? builder;
//   final String title;
//   final GenerateAppTitle? onGenerateTitle;
//   final ThemeData? theme;
//   final ThemeData? darkTheme;
//   final ThemeMode themeMode;
//   // final CustomTransition? customTransition;
//   final Color? color;
//   final Map<String, Map<String, String>>? translationsKeys;
//   // final Translations? translations;
//   final TextDirection? textDirection;
//   final Locale? locale;
//   final Locale? fallbackLocale;
//   final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
//   final LocaleListResolutionCallback? localeListResolutionCallback;
//   final LocaleResolutionCallback? localeResolutionCallback;
//   final Iterable<Locale> supportedLocales;
//   final bool showPerformanceOverlay;
//   final bool checkerboardRasterCacheImages;
//   final bool checkerboardOffscreenLayers;
//   final bool showSemanticsDebugger;
//   final bool debugShowCheckedModeBanner;
//   final Map<LogicalKeySet, Intent>? shortcuts;
//   final ScrollBehavior? scrollBehavior;
//   final ThemeData? highContrastTheme;
//   final ThemeData? highContrastDarkTheme;
//   final Map<Type, Action<Intent>>? actions;
//   final bool debugShowMaterialGrid;
//   // final ValueChanged<Routing?>? routingCallback;
//   // final Transition? defaultTransition;
//   final bool? opaqueRoute;
//   final VoidCallback? onInit;
//   final VoidCallback? onReady;
//   final VoidCallback? onDispose;
//   final bool? enableLog;
//   final LogWriterCallback? logWriterCallback;
//   final bool? popGesture;
//   final SmartManagement smartManagement;
//   // final List<Bind> binds;
//   final Duration? transitionDuration;
//   final bool? defaultGlobalState;
//   // final List<GetPage>? getPages;
//   final Widget? unknownRoute;
//   final RouteInformationProvider? routeInformationProvider;
//   final RouteInformationParser<Object>? routeInformationParser;
//   final RouterDelegate<Object>? routerDelegate;
//   final RouterConfig<Object>? routerConfig;
//   final BackButtonDispatcher? backButtonDispatcher;
//   final bool useInheritedMediaQuery;
//   final XMetricsData? xMetrics;

//   const XMaterialApp({
//     Key? key,
//     this.navigatorKey,
//     this.scaffoldMessengerKey,
//     this.home,
//     Map<String, Widget Function(BuildContext)> this.routes =
//         const <String, WidgetBuilder>{},
//     this.initialRoute,
//     this.onGenerateRoute,
//     this.onGenerateInitialRoutes,
//     this.onUnknownRoute,
//     this.useInheritedMediaQuery = false,
//     List<NavigatorObserver> this.navigatorObservers =
//         const <NavigatorObserver>[],
//     this.builder,
//     this.textDirection,
//     this.title = '',
//     this.onGenerateTitle,
//     this.color,
//     this.theme,
//     this.darkTheme,
//     this.themeMode = ThemeMode.system,
//     this.locale,
//     this.fallbackLocale,
//     this.localizationsDelegates,
//     this.localeListResolutionCallback,
//     this.localeResolutionCallback,
//     this.supportedLocales = const <Locale>[Locale('en', 'US')],
//     this.debugShowMaterialGrid = false,
//     this.showPerformanceOverlay = false,
//     this.checkerboardRasterCacheImages = false,
//     this.checkerboardOffscreenLayers = false,
//     this.showSemanticsDebugger = false,
//     this.debugShowCheckedModeBanner = true,
//     this.shortcuts,
//     this.scrollBehavior,
//     // this.customTransition,
//     this.translationsKeys,
//     // this.translations,
//     this.onInit,
//     this.onReady,
//     this.onDispose,
//     // this.routingCallback,
//     // this.defaultTransition,
//     // this.getPages,
//     this.opaqueRoute,
//     this.enableLog = kDebugMode,
//     this.logWriterCallback,
//     this.popGesture,
//     this.transitionDuration,
//     this.defaultGlobalState,
//     this.smartManagement = SmartManagement.full,
//     // this.binds = const [],
//     this.unknownRoute,
//     this.highContrastTheme,
//     this.highContrastDarkTheme,
//     this.actions,
//     this.xMetrics,
//   })  : routeInformationProvider = null,
//         backButtonDispatcher = null,
//         routeInformationParser = null,
//         routerDelegate = null,
//         routerConfig = null,
//         super(key: key);

//   const XMaterialApp.router({
//     Key? key,
//     this.routeInformationProvider,
//     this.scaffoldMessengerKey,
//     this.routeInformationParser,
//     this.routerDelegate,
//     this.routerConfig,
//     this.backButtonDispatcher,
//     this.builder,
//     this.title = '',
//     this.onGenerateTitle,
//     this.color,
//     this.theme,
//     this.darkTheme,
//     this.useInheritedMediaQuery = false,
//     this.highContrastTheme,
//     this.highContrastDarkTheme,
//     this.themeMode = ThemeMode.system,
//     this.locale,
//     this.localizationsDelegates,
//     this.localeListResolutionCallback,
//     this.localeResolutionCallback,
//     this.supportedLocales = const <Locale>[Locale('en', 'US')],
//     this.debugShowMaterialGrid = false,
//     this.showPerformanceOverlay = false,
//     this.checkerboardRasterCacheImages = false,
//     this.checkerboardOffscreenLayers = false,
//     this.showSemanticsDebugger = false,
//     this.debugShowCheckedModeBanner = true,
//     this.shortcuts,
//     this.scrollBehavior,
//     this.actions,
//     // this.customTransition,
//     this.translationsKeys,
//     // this.translations,
//     this.textDirection,
//     this.fallbackLocale,
//     // this.routingCallback,
//     // this.defaultTransition,
//     this.opaqueRoute,
//     this.onInit,
//     this.onReady,
//     this.onDispose,
//     this.enableLog = kDebugMode,
//     this.logWriterCallback,
//     this.popGesture,
//     this.smartManagement = SmartManagement.full,
//     // this.binds = const [],
//     this.transitionDuration,
//     this.defaultGlobalState,
//     // this.getPages,
//     this.navigatorObservers,
//     this.unknownRoute,
//     required this.xMetrics,
//   })  : navigatorKey = null,
//         onGenerateRoute = null,
//         home = null,
//         onGenerateInitialRoutes = null,
//         onUnknownRoute = null,
//         routes = null,
//         initialRoute = null,
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // XService.initializeApp(themeSizes: xMetrics ?? XMetricsData());

//     return MaterialApp.router(
//       routerDelegate: routerDelegate,
//       routeInformationParser: routeInformationParser,
//       backButtonDispatcher: backButtonDispatcher,
//       routeInformationProvider: routeInformationProvider,
//       routerConfig: routerConfig,
//       title: title,
//       onGenerateTitle: onGenerateTitle,
//       color: color,
//       theme: theme ?? ThemeData.fallback(),
//       darkTheme: darkTheme ?? theme ?? ThemeData.fallback(),
//       themeMode: themeMode,
//       locale: locale,
//       scaffoldMessengerKey: scaffoldMessengerKey,
//       localizationsDelegates: localizationsDelegates,
//       localeListResolutionCallback: localeListResolutionCallback,
//       localeResolutionCallback: localeResolutionCallback,
//       supportedLocales: supportedLocales,
//       debugShowMaterialGrid: debugShowMaterialGrid,
//       showPerformanceOverlay: showPerformanceOverlay,
//       checkerboardRasterCacheImages: checkerboardRasterCacheImages,
//       checkerboardOffscreenLayers: checkerboardOffscreenLayers,
//       showSemanticsDebugger: showSemanticsDebugger,
//       debugShowCheckedModeBanner: debugShowCheckedModeBanner,
//       shortcuts: shortcuts,
//       scrollBehavior: scrollBehavior,
//     );
//   }
// }
