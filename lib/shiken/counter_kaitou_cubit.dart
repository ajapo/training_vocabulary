import 'package:flutter_bloc/flutter_bloc.dart';

class CounterKaitouCubit extends Cubit<int> {
  CounterKaitouCubit(): super(0);

  void increment() => emit(state + 1);
}