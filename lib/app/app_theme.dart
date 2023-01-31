import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: _colorScheme,
  appBarTheme: _appBarTheme,
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff4a99e9),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xff101418),
  onSecondary: Color(0xffffffff),
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
    )
  ),
  centerTitle: true,
);
