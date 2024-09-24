import 'package:flutter/widgets.dart';
import 'package:flutter_cora/src/cora_view.dart';

abstract class CoraState<T extends CoraView> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return widget.build(this);
  }
}
