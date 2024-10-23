{{#isRiverpod}}import 'package:flutter_cora_riverpod/flutter_cora_riverpod.dart';
{{/isRiverpod}}{{^isRiverpod}}import 'package:flutter_cora/flutter_cora.dart';
{{/isRiverpod}}
import '{{moduleSnake}}_view.dart';
{{#isRiverpod}}
class {{modulePascal}}State extends CoraConsumerState<{{modulePascal}}View> {
{{/isRiverpod}}{{^isRiverpod}}
class {{modulePascal}}State extends CoraState<{{modulePascal}}View> {
{{/isRiverpod}}  @override
  void initState() {
    super.initState();
    print('{{modulePascal}}State');
  }
}
