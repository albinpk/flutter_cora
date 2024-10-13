import 'package:mason/mason.dart';

void run(HookContext context) {
  final module = context.vars['module'] as String;
  context.logger.info('Creating ${module.snakeCase} module...');
}
