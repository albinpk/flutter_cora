import 'package:flutter/material.dart';
import 'package:flutter_cora/flutter_cora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.initialValue,
  });

  /// Initial value for the counter.
  final int? initialValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cora Demo',
      home: HomeScreen(initialValue: initialValue),
    );
  }
}

/// Home screen ui (home_scree.dart).
class HomeScreen extends CoraView<HomeState> {
  const HomeScreen({
    super.key,
    this.initialValue,
  });

  /// Initial value for the counter.
  final int? initialValue;

  @override
  Widget build(BuildContext context, HomeState state) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // count
            Text(
              '${state.counter}',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // increment button
                IconButton(
                  onPressed: state.increment,
                  icon: const Icon(Icons.add),
                ),

                // reset button
                IconButton(
                  onPressed: state.resetCounter,
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeState createState() => HomeState();
}

/// Home screen state (home_state.dart).
class HomeState extends CoraState<HomeScreen> {
  /// Counter value.
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = widget.initialValue ?? 0;
  }

  /// Increment counter by 1.
  void increment() {
    setState(() => counter++);
  }

  /// Reset counter to 0.
  void resetCounter() {
    setState(() => counter = 0);
  }
}
