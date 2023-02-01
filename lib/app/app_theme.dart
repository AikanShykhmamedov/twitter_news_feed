import 'package:flutter/material.dart';

final appTheme = ThemeData(
  scaffoldBackgroundColor: _colorScheme.surface,
  colorScheme: _colorScheme,
  appBarTheme: _appBarTheme,
  dividerTheme: _dividerTheme,
  textTheme: _textTheme,
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff4a99e9),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xff101418),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xff566370),
  error: Color(0xffe54e4e),
  onError: Color(0xffffffff),
  background: Color(0xffffffff),
  onBackground: Color(0xff101418),
  surface: Color(0xffffffff),
  onSurface: Color(0xff101418),
  outline: Color(0xffD1D9DD),
);

final _appBarTheme = AppBarTheme(
  elevation: 0,
  backgroundColor: _colorScheme.surface,
  foregroundColor: _colorScheme.onSurface,
  shape: Border(
    bottom: BorderSide(
      color: _colorScheme.outline,
      width: 0.0,
    ),
  ),
  centerTitle: true,
);

final _dividerTheme = DividerThemeData(
  color: _colorScheme.outline,
  space: 1,
  thickness: 0.0,
);

const _textTheme = TextTheme(
  titleMedium: TextStyle(
    fontFamily: 'HelveticaNeueLTPro',
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
  bodyMedium: TextStyle(
    color: Color(0xff101418),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.3,
  ),
  bodySmall: TextStyle(
    color: Color(0xff566370),
    fontSize: 15,
  ),
  labelSmall: TextStyle(
    color: Color(0xff566370),
    fontSize: 12,
    letterSpacing: 0.25,
  ),
);
