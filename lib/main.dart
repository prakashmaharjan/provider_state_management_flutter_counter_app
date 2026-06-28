import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/counter_view.dart';
import 'viewmodels/counter_viewmodel.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const CounterView(),
      ),
    );
  }
}