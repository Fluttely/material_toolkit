part of '../x_design_tokens.dart';

class XGoogleFontsTokens extends Equatable {
  const XGoogleFontsTokens();

  TextStyle font(String familyName, {TextStyle? textStyle}) {
    return GoogleFonts.getFont(familyName, textStyle: textStyle);
  }

  static List<String> get availableFontFamilies {
    return GoogleFonts.asMap().keys.toList();
  }

  @override
  List<Object?> get props => [];

  @override
  String toString() => 'XGoogleFontsTokens()';
}
