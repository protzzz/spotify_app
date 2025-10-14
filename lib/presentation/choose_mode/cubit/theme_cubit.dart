import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // switch (json['theme'] as String?) {
    //   case 'light':
    //     return ThemeMode.light;
    //   case 'dark':
    //     return ThemeMode.dark;
    //   case 'system':
    //     return ThemeMode.system;
    //   default:
    //     return ThemeMode.system;
    // }

    return ThemeMode.values[json['theme'] as int];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // final v = switch (state) {
    //   ThemeMode.light => 'light',
    //   ThemeMode.dark => 'dark',
    //   ThemeMode.system => 'system',
    // };
    // return {'theme': v};

    return {'theme': state.index};
  }
}
