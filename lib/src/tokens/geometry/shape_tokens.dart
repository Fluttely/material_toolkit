import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum ShapeToken {
  /// A rectangular shape.
  rectangle,

  /// A circular shape.
  circle,

  /// A stadium shape.
  stadium,
}

/// A data class holding the customizable [ShapeBorder] values.
class ShapeTokensData extends Equatable {
  /// Creates a new instance of [ShapeTokensData].
  const ShapeTokensData({
    this.rectangle = const RoundedRectangleBorder(),
    this.circle = const CircleBorder(),
    this.stadium = const StadiumBorder(),
  });

  /// A rectangular shape.
  final ShapeBorder rectangle;

  /// A circular shape.
  final ShapeBorder circle;

  /// A stadium shape.
  final ShapeBorder stadium;

  /// Creates a copy of this object with the given fields replaced with the
  /// new values.
  ShapeTokensData copyWith({
    ShapeBorder? rectangle,
    ShapeBorder? circle,
    ShapeBorder? stadium,
  }) {
    return ShapeTokensData(
      rectangle: rectangle ?? this.rectangle,
      circle: circle ?? this.circle,
      stadium: stadium ?? this.stadium,
    );
  }

  @override
  List<Object?> get props => [rectangle, circle, stadium];
}
