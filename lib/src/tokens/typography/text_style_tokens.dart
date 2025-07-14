import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum TextStyleToken {
  /// The default text style.
  body,

  /// The text style for titles.
  title,

  /// The text style for captions.
  caption,
}

/// A data class holding the customizable [TextStyle] values.
class TextStyleTokensData extends Equatable {
  /// Creates a new instance of [TextStyleTokensData].
  const TextStyleTokensData({
    this.body,
    this.title,
    this.caption,
  });

  /// The text style for body text.
  final TextStyle? body;

  /// The text style for titles.
  final TextStyle? title;

  /// The text style for captions.
  final TextStyle? caption;

  /// Creates a copy of this object with the given fields replaced with the
  /// new values.
  TextStyleTokensData copyWith({
    TextStyle? body,
    TextStyle? title,
    TextStyle? caption,
  }) {
    return TextStyleTokensData(
      body: body ?? this.body,
      title: title ?? this.title,
      caption: caption ?? this.caption,
    );
  }

  @override
  List<Object?> get props => [body, title, caption];
}
