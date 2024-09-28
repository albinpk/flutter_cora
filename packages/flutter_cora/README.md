# flutter_cora

**flutter_cora** is a simple Flutter package for implementing the view-controller pattern, helping you separate UI and business logic to maintain cleaner and more organized code.

## Features

- Separate UI (View) from business logic (State).
- Promote clean architecture for Flutter applications.
- Lightweight and easy to integrate into existing projects

## Getting started

To use this package, add `flutter_cora` as a dependency in your pubspec.yaml file

```yaml
dependencies:
  flutter_cora: <latest_version>
```

## Usage

Here is a simple example of how to use `flutter_cora`.

```dart
class ExampleView extends CoraView<ExampleState> {
  const ExampleView({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(ExampleState state) {
    return Text('Example View ${state.count}');
  }

  @override
  ExampleState createState() => ExampleState();
}

class ExampleState extends CoraState<ExampleView> {
  int count = 1;

  @override
  void initState() {
    super.initState();
    print(widget.name);
  }
}
```

### Additional information
