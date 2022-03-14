import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;

    emit(ThemeChanged());

    if (_isDark) {
      emit(ThemeDark(message: 'Change to Light'));
    } else {
      emit(ThemeLight(message: 'Change to Dark'));
    }
  }
}
