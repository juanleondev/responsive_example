import 'package:flutter/material.dart';
import 'package:reponsive_talk/text_styles.dart';

const _smallTextScaleFactor = 1;
const _mediumTextScaleFactor = 1.1;

/// Namespace for [ThemeData].
class PauloniaTheme {
  /// Standard `ThemeData`.
  static ThemeData get standard {
    return ThemeData(
      colorScheme: const ColorScheme(
        primary: Color(0xff173B56),
        onPrimary: Colors.black,
        background: Colors.red,
        onBackground: Colors.black,
        secondary: Color(0xffEB0975),
        onSecondary: Colors.white,
        error: Colors.black,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: _appBarTheme,
    );
  }

  /// `ThemeData`  for small screens.
  static ThemeData get small {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData`  for medium screens.
  static ThemeData get medium {
    return standard.copyWith(textTheme: _mediumTextTheme);
  }

  static TextTheme get _textTheme {
    return TextTheme(
      headline1: PauloniaTextStyle.headline1,
      headline2: PauloniaTextStyle.headline2,
      headline3: PauloniaTextStyle.headline3,
      headline4: PauloniaTextStyle.headline4,
      headline5: PauloniaTextStyle.headline5,
      headline6: PauloniaTextStyle.headline6,
      subtitle1: PauloniaTextStyle.subtitle1,
      subtitle2: PauloniaTextStyle.subtitle2,
      bodyText1: PauloniaTextStyle.bodyText1,
      bodyText2: PauloniaTextStyle.bodyText2,
      caption: PauloniaTextStyle.caption,
      overline: PauloniaTextStyle.overline,
      button: PauloniaTextStyle.button,
    );
  }

  static TextTheme get _smallTextTheme {
    return TextTheme(
      headline1: PauloniaTextStyle.headline1.copyWith(
        fontSize: _textTheme.headline1!.fontSize! * _smallTextScaleFactor,
      ),
      headline2: PauloniaTextStyle.headline2.copyWith(
        fontSize: _textTheme.headline2!.fontSize! * _smallTextScaleFactor,
      ),
      headline3: PauloniaTextStyle.headline3.copyWith(
        fontSize: _textTheme.headline3!.fontSize! * _smallTextScaleFactor,
      ),
      headline4: PauloniaTextStyle.headline4.copyWith(
        fontSize: _textTheme.headline4!.fontSize! * _smallTextScaleFactor,
      ),
      headline5: PauloniaTextStyle.headline5.copyWith(
        fontSize: _textTheme.headline5!.fontSize! * _smallTextScaleFactor,
      ),
      headline6: PauloniaTextStyle.headline6.copyWith(
        fontSize: _textTheme.headline6!.fontSize! * _smallTextScaleFactor,
      ),
      subtitle1: PauloniaTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.subtitle1!.fontSize! * _smallTextScaleFactor,
      ),
      subtitle2: PauloniaTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.subtitle2!.fontSize! * _smallTextScaleFactor,
      ),
      bodyText1: PauloniaTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyText1!.fontSize! * _smallTextScaleFactor,
      ),
      bodyText2: PauloniaTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyText2!.fontSize! * _smallTextScaleFactor,
      ),
      caption: PauloniaTextStyle.caption.copyWith(
        fontSize: _textTheme.caption!.fontSize! * _smallTextScaleFactor,
      ),
      overline: PauloniaTextStyle.overline.copyWith(
        fontSize: _textTheme.overline!.fontSize! * _smallTextScaleFactor,
      ),
      button: PauloniaTextStyle.button.copyWith(
        fontSize: _textTheme.button!.fontSize! * _smallTextScaleFactor,
      ),
    );
  }

  static TextTheme get _mediumTextTheme {
    return TextTheme(
      headline1: PauloniaTextStyle.headline1.copyWith(
        fontSize: _textTheme.headline1!.fontSize! * _mediumTextScaleFactor,
      ),
      headline2: PauloniaTextStyle.headline2.copyWith(
        fontSize: _textTheme.headline2!.fontSize! * _mediumTextScaleFactor,
      ),
      headline3: PauloniaTextStyle.headline3.copyWith(
        fontSize: _textTheme.headline3!.fontSize! * _mediumTextScaleFactor,
      ),
      headline4: PauloniaTextStyle.headline4.copyWith(
        fontSize: _textTheme.headline4!.fontSize! * _mediumTextScaleFactor,
      ),
      headline5: PauloniaTextStyle.headline5.copyWith(
        fontSize: _textTheme.headline5!.fontSize! * _mediumTextScaleFactor,
      ),
      headline6: PauloniaTextStyle.headline6.copyWith(
        fontSize: _textTheme.headline6!.fontSize! * _mediumTextScaleFactor,
      ),
      subtitle1: PauloniaTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.subtitle1!.fontSize! * _mediumTextScaleFactor,
      ),
      subtitle2: PauloniaTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.subtitle2!.fontSize! * _mediumTextScaleFactor,
      ),
      bodyText1: PauloniaTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyText1!.fontSize! * _mediumTextScaleFactor,
      ),
      bodyText2: PauloniaTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyText2!.fontSize! * _mediumTextScaleFactor,
      ),
      caption: PauloniaTextStyle.caption.copyWith(
        fontSize: _textTheme.caption!.fontSize! * _mediumTextScaleFactor,
      ),
      overline: PauloniaTextStyle.overline.copyWith(
        fontSize: _textTheme.overline!.fontSize! * _mediumTextScaleFactor,
      ),
      button: PauloniaTextStyle.button.copyWith(
        fontSize: _textTheme.button!.fontSize! * _mediumTextScaleFactor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(elevation: 0);
  }
}
