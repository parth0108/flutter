import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


enum CounterEvent {
  increment,

  decrement,

  error,
}
/// make list of event

class CounterBloc extends Bloc<CounterEvent, int> {

  CounterBloc() : super(0);


  ///  List Of All Cases  Increment Decrement and Change theme
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.error:
        addError(Exception('unsupported event'));
    }
  }
}


class ThemeCubit extends Cubit<ThemeData> {


  ///  here two theme design

  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.light,
  );

  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
  );

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}