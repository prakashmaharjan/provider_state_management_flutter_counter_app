import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app with Provider State Management.", style: TextStyle(fontSize: 18),),
      ),
      body: SafeArea(
        
        child: Center(
          child: Text(
            counterViewModel.counter.value.toString(),
            style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          FloatingActionButton(
            heroTag: "increment",
            onPressed: counterViewModel.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: counterViewModel.decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "reset",
            onPressed: counterViewModel.reset,
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}