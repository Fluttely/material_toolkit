part of 'x_helpers.dart';

enum XMetricsAttributeErrors {
  unsupportedError;

  String message({
    required String attribute,
    required String location,
  }) {
    switch (this) {
      case XMetricsAttributeErrors.unsupportedError:
        return '''
        Access to $attribute has been intentionally blocked in metrics.$location. 
        This property should not be used or accessed directly, as its usage has been deprecated or is reserved for internal purposes only. 
        Please review your implementation to avoid relying on this property and ensure your application's compatibility with future changes.
        ''';
    }
  }
}
