import 'package:flutter/widgets.dart';
import 'package:flutter_cora_riverpod/flutter_cora_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('cora consumer state', () {
    testWidgets('read method', (tester) async {
      final provider = Provider((ref) => 7);
      late int value;

      await tester.pumpWidget(
        ProviderScope(
          child: _CallbackWidget(
            builder: (state) {
              value = state.read(provider);
              return const SizedBox();
            },
          ),
        ),
      );

      expect(value, 7);
    });

    testWidgets('watch method', (tester) async {
      final provider = StateProvider((ref) => 1);
      late CoraConsumerState state;
      int buildCount = 0;

      await tester.pumpWidget(
        ProviderScope(
          child: _CallbackWidget(
            builder: (s) {
              state = s;
              s.watch(provider);
              buildCount++;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(buildCount, 1);

      state.read(provider.notifier).state = 2;
      await tester.pump();

      expect(buildCount, 2);
    });

    testWidgets('listen method', (tester) async {
      final provider = StateProvider((ref) => 1);
      late CoraConsumerState state;
      int buildCount = 0;
      int listenCount = 0;

      await tester.pumpWidget(
        ProviderScope(
          child: _CallbackWidget(
            builder: (s) {
              state = s;
              s.listen(
                provider,
                (previous, next) => listenCount++,
              );
              buildCount++;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(buildCount, 1);
      expect(listenCount, 0);

      state.read(provider.notifier)
        ..state = 2
        ..state = 3;
      await tester.pump();

      expect(buildCount, 1);
      expect(listenCount, 2);
    });
  });
}

class _CallbackWidget extends CoraConsumerView<_CallbackState> {
  const _CallbackWidget({required this.builder});

  final Widget Function(CoraConsumerState state) builder;

  @override
  Widget build(BuildContext context, _CallbackState state) => builder(state);

  @override
  _CallbackState createState() => _CallbackState();
}

class _CallbackState extends CoraConsumerState<_CallbackWidget> {}
