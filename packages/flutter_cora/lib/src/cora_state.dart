import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'cora_view.dart';

/// A base class for the state of a [CoraView].
///
/// This class extends the [State] class so all the lifecycle methods like
/// [initState], [didChangeDependencies], [didUpdateWidget], [dispose] are
/// available to override.
abstract class CoraState<T extends CoraView> extends State<T> {
  @nonVirtual
  @override
  Widget build(BuildContext context) {
    return widget.build(this);
  }
}
