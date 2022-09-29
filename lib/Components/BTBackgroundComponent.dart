import 'package:flutter/material.dart';

class BTBackgroundComponent extends StatelessWidget {
  const BTBackgroundComponent({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff000031),
            Color(0xff8b0000),
          ])),
      child: child,
    );
  }
}
