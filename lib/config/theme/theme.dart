import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@Riverpod(keepAlive: true)
ThemeData lightTheme(LightThemeRef ref) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xffFCFDF6),
  );
}

@Riverpod(keepAlive: true)
ThemeData darkTheme(DarkThemeRef ref) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff1A1C19),
  );
}
