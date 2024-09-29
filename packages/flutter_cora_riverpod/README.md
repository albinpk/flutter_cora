# flutter_cora_riverpod

[![deploy](https://github.com/albinpk/flutter_cora/actions/workflows/publish_flutter_cora.yml/badge.svg)](https://github.com/albinpk/flutter_cora/actions/workflows/publish_flutter_cora.yml)
[![codecov](https://codecov.io/github/albinpk/flutter_cora/graph/badge.svg?token=D40JS077DY)](https://codecov.io/github/albinpk/flutter_cora)
[![Pub Version](https://img.shields.io/pub/v/flutter_cora_riverpod)](https://pub.dev/packages/flutter_cora_riverpod)
[![GitHub License](https://img.shields.io/github/license/albinpk/flutter_cora)](https://github.com/albinpk/flutter_cora/blob/dev/LICENSE)
![GitHub last commit](https://img.shields.io/github/last-commit/albinpk/flutter_cora?path=packages%2Fflutter_cora_riverpod)
[![Pub Points](https://img.shields.io/pub/points/flutter_cora_riverpod)](https://pub.dev/packages/flutter_cora_riverpod/score)

**flutter_cora_riverpod** is a simple Flutter package for implementing the view-controller pattern, helping you separate UI and business logic to maintain cleaner and more organized code.

## Features

- Separate UI (View) from business logic (State).
- Promote clean architecture for Flutter applications.
- Lightweight and easy to integrate into existing projects

## Getting started

To use this package, add `flutter_cora_riverpod` as a dependency in your pubspec.yaml file

```yaml
dependencies:
  flutter_cora_riverpod: ^0.0.1-dev.4
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
