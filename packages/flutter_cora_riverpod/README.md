# flutter_cora_riverpod

[![codecov](https://codecov.io/github/albinpk/flutter_cora/graph/badge.svg?token=D40JS077DY)](https://codecov.io/github/albinpk/flutter_cora)
![Pub Version](https://img.shields.io/pub/v/flutter_cora_riverpod)

**flutter_cora_riverpod** is a simple Flutter package for implementing the view-controller pattern, helping you separate UI and business logic to maintain cleaner and more organized code.

## Features

- Separate UI (View) from business logic (State).
- Promote clean architecture for Flutter applications.
- Lightweight and easy to integrate into existing projects

## Getting started

To use this package, add `flutter_cora_riverpod` as a dependency in your pubspec.yaml file

```yaml
dependencies:
  flutter_cora_riverpod: <latest_version>
```

## Usage

Here is a simple example of how to use `flutter_cora_riverpod`.

```dart
/// Provider for the counter label.
final labelProvider = Provider.autoDispose((ref) => 'Count');

/// example_view.dart
class ExampleView extends CoraConsumerView<ExampleState> {
  const ExampleView({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(ExampleState state) {
    return Column(
      children: [
        Text(state.ref.watch(labelProvider)),
        Text(
          '${state.count}',
          style: Theme.of(state.context).textTheme.titleLarge,
        ),
      ],
    );
  }

  @override
  ExampleState createState() => ExampleState();
}

/// example_state.dart
class ExampleState extends CoraConsumerState<ExampleView> {
  int count = 1;

  @override
  void initState() {
    super.initState();
    print('name: ${widget.name}');
    print('label: ${ref.read(labelProvider)}');
  }
}
```
