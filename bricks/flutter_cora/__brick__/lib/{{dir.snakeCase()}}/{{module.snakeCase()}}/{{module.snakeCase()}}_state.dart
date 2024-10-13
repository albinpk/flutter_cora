import 'package:flutter_cora/flutter_cora.dart';

import '{{module.snakeCase()}}_view.dart';

class {{module.pascalCase()}}State extends CoraState<{{module.pascalCase()}}View> {
  @override
  void initState() {
    super.initState();
    print('{{module.pascalCase()}}State');
  }
}
