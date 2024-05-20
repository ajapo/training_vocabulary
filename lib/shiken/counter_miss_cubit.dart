import 'package:flutter_bloc/flutter_bloc.dart';

class CounterMissCubit extends Cubit<int> {
  CounterMissCubit() : super(0);

  void increment() => emit(state + 1);
}