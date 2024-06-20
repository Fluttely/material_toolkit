import 'package:equatable/equatable.dart';

/// This class associated a [name] to a given [value].
class XNamed<T> extends Equatable {
  const XNamed(this.name, this.value);

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
  XNamed<T> named(String name) => XNamed<T>(name, this);
}
