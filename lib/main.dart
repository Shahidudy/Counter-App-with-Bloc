import 'package:flutter/material.dart';
import 'package:my_block/counter/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_block/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //need to initialize Blocprovider before MaterialApp()
    return BlocProvider(
        create: (context) => CounterBloc(),
        child: MaterialApp(
          home: HomePage(),
        ));
  }
}
