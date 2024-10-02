import 'package:flutter/widgets.dart';
import 'package:flutter_cora_riverpod/src/cora_consumer_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A base class for Flutter widgets that can be used with [CoraConsumerState].
///
/// It provides a `build` method that is called when the widget needs to be
/// rebuilt. This method should return the widget to be displayed.
///
/// The `createState` method should return an instance of the [CoraConsumerState] class that
/// will be used to store the widget's state.
///
/// See also:
///
/// * [CoraConsumerState], which is the base class for the state of a [CoraConsumerView].
abstract class CoraConsumerView<T extends ConsumerState>
    extends ConsumerStatefulWidget {
  /// Constructs a [CoraConsumerView].
  const CoraConsumerView({super.key});

  @override
  T createState();

  /// The [build] method is called when the widget needs to be rebuilt.
  ///
  /// It should return the widget to be displayed.
  ///
  /// The [state] parameter contains the state of the widget.
  /// The [BuildContext] and [WidgetRef]  can be accessed from
  /// the [state] parameter, like `state.context` and `state.ref`.
  Widget build(T state);
}
