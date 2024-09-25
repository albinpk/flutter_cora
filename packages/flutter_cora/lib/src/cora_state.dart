import 'package:flutter/widgets.dart';
import 'cora_view.dart';

abstract class CoraState<T extends CoraView> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return widget.build(this);
  }
}
