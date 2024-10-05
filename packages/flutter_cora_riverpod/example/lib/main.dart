import 'package:flutter/material.dart';
import 'package:flutter_cora_riverpod/flutter_cora_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
    this.initialValue,
  });

  /// Initial value for the counter.
  final int? initialValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cora Riverpod Demo',
      home: HomeScreen(initialValue: initialValue),
    );
  }
}

/// Provider for the counter label.
final labelProvider = Provider.autoDispose((ref) => 'Count');

/// Home screen ui (home_scree.dart).
class HomeScreen extends CoraConsumerView<HomeState> {
  const HomeScreen({
    super.key,
    this.initialValue,
  });

  /// Initial value for the counter.
  final int? initialValue;

  @override
  Widget build(HomeState state) {
    final label = state.watch(labelProvider); // same as ref.watch
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // count
            Text(
              '$label: ${state.counter}',
              style: Theme.of(state.context).textTheme.titleLarge,
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
class HomeState extends CoraConsumerState<HomeScreen> {
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
