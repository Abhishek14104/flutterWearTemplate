import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const WearCounterApp());
}

class WearCounterApp extends StatelessWidget {
  const WearCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (context, shape, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: CounterScreen(watchShape: shape),
        );
      },
    );
  }
}

class CounterScreen extends StatefulWidget {
  final WearShape watchShape;
  const CounterScreen({super.key, required this.watchShape});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  void _incrementCounter() {
    setState(() => _count++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $_count',
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              'Shape: ${widget.watchShape == WearShape.round ? 'Round' : 'Square'}',
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
