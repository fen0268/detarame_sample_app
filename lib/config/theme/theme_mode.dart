import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../preferences.dart';

part 'theme_mode.g.dart';

// SharedPreferences保存用キー
const _isDarkThemeKey = 'selectedThemeKey';

@Riverpod(keepAlive: true)
class ThemeSelector extends _$ThemeSelector {
  @override
  ThemeMode build() {
    // テーマが保存されていればテーマを反映、そうでなければ初期値のシステム依存
    final isDarkTheme =
        ref.read(sharedPreferencesProvider).getBool(_isDarkThemeKey);
    if (isDarkTheme == null) {
      const isDarkTheme = ThemeMode.system == ThemeMode.dark;
      ref.read(sharedPreferencesProvider).setBool(_isDarkThemeKey, isDarkTheme);
      return ThemeMode.system;
    }
    return isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  // テーマの変更と保存
  Future<void> toggleThemeAndSave({required bool isDarkTheme}) async {
    await ref
        .read(sharedPreferencesProvider)
        .setBool(_isDarkThemeKey, isDarkTheme);
    state = isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }
}
