import 'package:flutter/widgets.dart';

abstract class CoraView<T extends State> extends StatefulWidget {
  const CoraView({super.key});

  @override
  T createState();

  Widget build(T state);
}
