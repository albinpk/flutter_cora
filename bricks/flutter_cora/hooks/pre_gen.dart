import 'package:mason/mason.dart';

void run(HookContext context) {
  final module = context.vars['module'] as String;
  context.logger.info('Creating ${module.snakeCase} module...');
  final vars = context.vars;
  vars['dir'] = (vars['dir'] as String).snakeCase;
  vars['moduleSnake'] = (vars['module'] as String).snakeCase;
  vars['modulePascal'] = (vars['module'] as String).pascalCase;
  vars['isRiverpod'] = vars['package'] == 'flutter_cora_riverpod';
}
