import 'package:flutter/material.dart';
import 'package:searching_app/counter_stream/counter_api.dart';

class CounterStreamApp extends StatelessWidget {
  CounterStreamApp({Key? key}) : super(key: key);

  final _api = CounterApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('카운터 Stream 버전'),
      ), //AppBar
      body: Center(
        child: StreamBuilder<int>(
          initialData: 0,
          stream: _api.countStream,
          builder: (context, snapshot) {
            return Text(
              "${snapshot.data}",
              style: Theme.of(context).textTheme.headline1,
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _api.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
