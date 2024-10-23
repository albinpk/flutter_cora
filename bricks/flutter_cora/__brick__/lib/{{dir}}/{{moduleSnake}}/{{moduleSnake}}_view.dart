import 'package:flutter/material.dart';
{{#isRiverpod}}import 'package:flutter_cora_riverpod/flutter_cora_riverpod.dart';
{{/isRiverpod}}{{^isRiverpod}}import 'package:flutter_cora/flutter_cora.dart';
{{/isRiverpod}}
import '{{moduleSnake}}_state.dart';
{{#isRiverpod}}
class {{modulePascal}}View extends CoraConsumerView<{{modulePascal}}State> {
{{/isRiverpod}}{{^isRiverpod}}
class {{modulePascal}}View extends CoraView<{{modulePascal}}State> {
{{/isRiverpod}}  const {{modulePascal}}View({super.key});

  @override
  {{modulePascal}}State createState() => {{modulePascal}}State();

  @override
  Widget build(BuildContext context, {{modulePascal}}State state) {
    return const Text('{{modulePascal}}View');
  }
}
