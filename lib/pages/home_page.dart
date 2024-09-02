import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_block/counter/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('build 1');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Text(
                'data',
              ),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                print('build 2');
                return Text(
                  '${state.count}',
                  style: TextStyle(fontSize: 80),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(Increment());
                  print('build 3');
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 80),
                )),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(Decrement());
                  print('build 4');
                },
                child: Text('data'))
          ],
        ),
      ),
    );
  }
}
