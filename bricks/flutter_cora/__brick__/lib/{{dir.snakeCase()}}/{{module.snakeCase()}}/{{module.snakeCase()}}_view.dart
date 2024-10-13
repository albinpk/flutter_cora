import 'package:flutter/material.dart';
import 'package:flutter_cora/flutter_cora.dart';

import '{{module.snakeCase()}}_state.dart';

class {{module.pascalCase()}}View extends CoraView<{{module.pascalCase()}}State> {
  const {{module.pascalCase()}}View({super.key});

  @override
  {{module.pascalCase()}}State createState() => {{module.pascalCase()}}State();

  @override
  Widget build({{module.pascalCase()}}State state) {
    return const Text('{{module.pascalCase()}}View');
  }
}
