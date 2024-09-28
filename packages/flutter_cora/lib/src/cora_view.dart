import 'package:flutter/widgets.dart';

import 'cora_state.dart';

/// A base class for Flutter widgets that can be used with [CoraState].
///
/// It provides a `build` method that is called when the widget needs to be
/// rebuilt. This method should return the widget to be displayed.
///
/// The `createState` method should return an instance of the [CoraState] class that
/// will be used to store the widget's state.
///
/// See also:
///
/// * [CoraState], which is the base class for the state of a [CoraView].
abstract class CoraView<T extends State> extends StatefulWidget {
  /// Constructs a [CoraView].
  const CoraView({super.key});

  @override
  T createState();

  /// The [build] method is called when the widget needs to be rebuilt.
  ///
  /// It should return the widget to be displayed.
  ///
  /// The [state] parameter contains the state of the widget. The build context can
  /// be accessed by the `context` getter like `state.context`.
  Widget build(T state);
}
