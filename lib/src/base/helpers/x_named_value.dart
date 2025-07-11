part of 'x_helpers.dart';

/// Associates a [name] to a given [value].
class XNamedValue<T> extends Equatable {
  const XNamedValue(this.name, this.value);

  final String name;
  final T value;

  @override
  List<Object?> get props => [
        value,
      ];

  @override
  String toString() => '<$name>($value)';
}

extension NamedExtension<T> on T {
  XNamedValue<T> named(String name) => XNamedValue<T>(name, this);
}
