import 'package:bettingtips/Commons/BTStrings.dart';
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
          image: DecorationImage(
              image: AssetImage(btBackgroundImageAsset), fit: BoxFit.cover),
          color: Colors.black),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: child,
      ),
    );
  }
}