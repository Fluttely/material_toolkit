part of 'x_helpers.dart';

/// This class associated a [name] to a given [value].
class NamedValue<T> extends Equatable {
  const NamedValue(this.name, this.value);

  final String name;
  final T value;

  @override
  List<Object?> get props => [
        value,
      ];

  @override
  String toString() => '<$name>($value)';
}

extension NamedValueExtension<T> on T {
  NamedValue<T> named(String name) => NamedValue<T>(name, this);
}
