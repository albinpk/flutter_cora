# flutter_cora

[![deploy](https://github.com/albinpk/flutter_cora/actions/workflows/publish_flutter_cora.yml/badge.svg)](https://github.com/albinpk/flutter_cora/actions/workflows/publish_flutter_cora.yml)
[![codecov](https://codecov.io/github/albinpk/flutter_cora/graph/badge.svg?token=D40JS077DY)](https://codecov.io/github/albinpk/flutter_cora)
[![Pub Version](https://img.shields.io/pub/v/flutter_cora)](https://pub.dev/packages/flutter_cora)
[![GitHub License](https://img.shields.io/github/license/albinpk/flutter_cora)](https://github.com/albinpk/flutter_cora/blob/dev/LICENSE)
![GitHub last commit](https://img.shields.io/github/last-commit/albinpk/flutter_cora?path=packages%2Fflutter_cora)
[![Pub Points](https://img.shields.io/pub/points/flutter_cora)](https://pub.dev/packages/flutter_cora/score)

**flutter_cora** is a simple Flutter package for implementing the view-controller pattern, helping you separate UI and business logic to maintain cleaner and more organized code.

> **Note:**
> If you are using [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) for state management, check out [flutter_cora_riverpod](https://pub.dev/packages/flutter_cora_riverpod).

## Features

- Separate UI (View) from business logic (State).
- Promote clean architecture for Flutter applications.
- Lightweight and easy to integrate into existing projects

## Getting started

To use this package, add `flutter_cora` as a dependency in your pubspec.yaml file

```yaml
dependencies:
  flutter_cora: ^0.0.1-dev.18
```

## Usage

Here is a simple example of how to use `flutter_cora`.

```dart
/// example_view.dart
class ExampleView extends CoraView<ExampleState> {
  const ExampleView({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(ExampleState state) {
    return Text('Count ${state.count}');
  }

  @override
  ExampleState createState() => ExampleState();
}

/// example_state.dart
class ExampleState extends CoraState<ExampleView> {
  int count = 1;

  @override
  void initState() {
    super.initState();
    print('name: ${widget.name}');
  }
}
```
