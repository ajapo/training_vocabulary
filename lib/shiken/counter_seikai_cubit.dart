import 'package:flutter_bloc/flutter_bloc.dart';

class CounterSeikaiCubit extends Cubit<int> {
  CounterSeikaiCubit() : super(0);

  void increment() => emit(state + 1);
}