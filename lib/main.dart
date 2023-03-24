import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/count/counter_cubit.dart';
import 'bloc/count/counter_page.dart';
import 'bloc/randome_name/radom_name_cubit.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => RandomeNameCubit(name: 'oak'),
        )
      ],
      child: const CounterPage(),
    ));
  }
}
