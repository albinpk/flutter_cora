import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cora_consumer_view.dart';

/// A base class for the state of a [CoraConsumerView].
///
/// This class extends the [ConsumerState] class so all the lifecycle methods like
/// [initState], [didChangeDependencies], [didUpdateWidget], [dispose] are
/// available to override.
abstract class CoraConsumerState<T extends CoraConsumerView>
    extends ConsumerState<T> {
  /// Reads a provider without listening to it.
  ///
  /// See [WidgetRef.read] for more information.
  S read<S>(ProviderListenable<S> provider) => ref.read<S>(provider);

  /// Returns the value exposed by a provider and rebuild
  /// the widget when that value changes.
  ///
  /// See [WidgetRef.watch] for more information.
  S watch<S>(ProviderListenable<S> provider) => ref.watch<S>(provider);

  /// Listen to a provider and call `listener` whenever its value changes,
  /// without having to take care of removing the listener.
  ///
  /// See [WidgetRef.listen] for more information.
  void listen<S>(
    ProviderListenable<S> provider,
    void Function(S? previous, S next) listener, {
    void Function(Object error, StackTrace stackTrace)? onError,
  }) =>
      ref.listen<S>(provider, listener, onError: onError);

  @nonVirtual
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
