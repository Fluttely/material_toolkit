// class XService {
//   // Private constructor for internal use to ensure singleton pattern.
//   XService._internal();

//   // The single instance of Globals.
//   static final XService _instance = XService._internal();

//   /// Gets the singleton instance of Globals.
//   /// Throws an exception if called before the module is initialized.
//   static XService get instance {
//     if (!_hasInit) {
//       throw Exception(
//           '''XService must be initialized before use. Call XService.init() on main() { XService.init(); }.''');
//     }
//     return _instance;
//   }

//   // Flag to indicate whether the Globals has been initialized.
//   static bool _hasInit = false;

//   /// Initializes the Globals.
//   /// It initializes necessary controllers and sets the _hasInit flag to true.
//   /// This method should be called before accessing the instance.
//   static void initializeApp(
//       // {
//       // required ThemeData theme,
//       // required XMetricsData metrics,
//       // }
//       ) {
//     if (!_hasInit) {
//       _hasInit = true;
//       // instance.theme = theme;
//       // instance.metrics = metrics;
//     }
//   }

//   // late ThemeData theme;
//   // late XMetricsData metrics;
// }
