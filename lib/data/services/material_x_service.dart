import 'package:material_toolkit/material_toolkit.dart';

class MaterialXService {
  // Private constructor for internal use to ensure singleton pattern.
  MaterialXService._internal();

  // The single instance of Globals.
  static final MaterialXService _instance = MaterialXService._internal();

  /// Gets the singleton instance of Globals.
  /// Throws an exception if called before the module is initialized.
  static MaterialXService get instance {
    if (!_hasInit) {
      throw Exception(
          '''MaterialX must be initialized before use. Call Globals.init() on main() { Globals.init(); }.''');
    }
    return _instance;
  }

  // Flag to indicate whether the Globals has been initialized.
  static bool _hasInit = false;

  /// Initializes the Globals.
  /// It initializes necessary controllers and sets the _hasInit flag to true.
  /// This method should be called before accessing the instance.
  static void initializeApp({required XMetricsData themeSizes}) {
    if (!_hasInit) {
      _hasInit = true;
      instance.metrics = themeSizes;
    }
  }

  late XMetricsData metrics;
}

extension ThemeDataExtension on ThemeData {
  XMetricsData get data => MaterialXService.instance.metrics;
}
