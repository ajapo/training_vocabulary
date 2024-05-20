import 'package:flutter/material.dart';
import 'package:training_vocabulary/shiken/counter_kaitou_cubit.dart';
import 'package:training_vocabulary/shiken/counter_miss_cubit.dart';
import 'package:training_vocabulary/shiken/counter_seikai_cubit.dart';
import 'shiken/shiken_screen.dart';
import 'touroku/touroku_screen.dart';
import 'menu/menu_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(TrainingVocabulary());

class TrainingVocabulary extends StatelessWidget {
  const TrainingVocabulary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => Menu(),
        '/touroku': (context) => Touroku(),
        '/shiken': (context) => Shiken(),
      },
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterKaitouCubit>(
            create: (BuildContext context) => CounterKaitouCubit(),
          ),
          BlocProvider<CounterSeikaiCubit>(
            create: (BuildContext context) => CounterSeikaiCubit(),
          ),
          BlocProvider<CounterMissCubit>(
            create: (BuildContext context) => CounterMissCubit(),
          ),
        ],
        child: Shiken(),
      ),
    );
  }
}