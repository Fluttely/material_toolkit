import 'package:material_toolkit/material_toolkit.dart';

class XMaterialService {
  // Private constructor for internal use to ensure singleton pattern.
  XMaterialService._internal();

  // The single instance of Globals.
  static final XMaterialService _instance = XMaterialService._internal();

  /// Gets the singleton instance of Globals.
  /// Throws an exception if called before the module is initialized.
  static XMaterialService get instance {
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
  static void initializeApp({required XMetricsData metrics}) {
    if (!_hasInit) {
      _hasInit = true;
      instance.metrics = metrics;
    }
  }

  late XMetricsData metrics;
}

extension ThemeDataExtension on ThemeData {
  XMetricsData get data => XMaterialService.instance.metrics;
}
