import 'package:bloc_counterapp/bloc/counter_bloc.dart';
import 'package:bloc_counterapp/cubit/counter_cubit.dart';
import 'package:bloc_counterapp/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => CounterCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Simple Bloc',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        home: const HomePage(title: 'Counter app'),
      ),
    );
  }
}
