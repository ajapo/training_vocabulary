import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_vocabulary/shiken/counter_kaitou_cubit.dart';
import 'package:training_vocabulary/shiken/counter_miss_cubit.dart';
import 'package:training_vocabulary/shiken/counter_seikai_cubit.dart';

class Shiken extends StatelessWidget {
  Shiken({super.key});

  List<String> mondai = <String>[
    'imperative',
    'assumption',
    'intuitive',
    'ephemeral',
    'seldom',
    'boilerplate',
    'analogous',
    'immutable',
    'Dependency Injection'
  ];
  List<String> kaitou = <String>[
    '必須の',
    '仮定',
    '直感的な',
    '一時的な',
    'めったに～しない',
    'テンプレ',
    '類似した',
    '不変の',
    '依存性の注入'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('単語試験'),
      ),

      body: BlocBuilder<CounterKaitouCubit, int>(
        builder: (context, count) => Center(child: Text('$count')),
      ),

      // body: Column(
      //   children: <Widget>[
      //     BlocBuilder<CounterKaitouCubit, int>(
      //       builder: (context, cntrKtuCbt) {
      //         return Center(
      //           child: Text('$mondai[$cntrKtuCbt]'),
      //         );
      //       },
      //     ),
      //     BlocBuilder<CounterKaitouCubit, int>(
      //       builder: (context, cntrMssCbt) {
      //         return Center(
      //           child: Text('$kaitou[$cntrMssCbt]'),
      //         );
      //       },
      //     ),
      //     TextButton(
      //       child: Text('回答'),
      //       onPressed: () {},
      //     ),
      //     TextButton(
      //       child: Text('正解'),
      //       onPressed: () {
      //         context.read<CounterSeikaiCubit>().increment();
      //         context.read<CounterKaitouCubit>().increment();
      //       },
      //     ),
      //     TextButton(
      //       child: Text('ミス'),
      //       onPressed: () {
      //         context.read<CounterMissCubit>().increment();
      //         context.read<CounterKaitouCubit>().increment();
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
