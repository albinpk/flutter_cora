import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cora_riverpod/src/cora_consumer_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A base class for the state of a [CoraConsumerView].
///
/// This class extends the [ConsumerState] class so all the lifecycle methods like
/// [initState], [didChangeDependencies], [didUpdateWidget], [dispose] are
/// available to override.
abstract class CoraConsumerState<T extends CoraConsumerView> extends ConsumerState<T> {
  @nonVirtual
  @override
  Widget build(BuildContext context) {
    return widget.build(this);
  }
}
