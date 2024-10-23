import 'package:flutter/material.dart';
import 'package:flutter_cora/flutter_cora.dart';

import '{{moduleSnake}}_state.dart';

class {{modulePascal}}View extends CoraView<{{modulePascal}}State> {
  const {{modulePascal}}View({super.key});

  @override
  {{modulePascal}}State createState() => {{modulePascal}}State();

  @override
  Widget build(BuildContext context, {{modulePascal}}State state) {
    return const Text('{{modulePascal}}View');
  }
}
