import 'package:bettingtips/Components/BTBackgroundComponent.dart';
import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/BTDrawerComponent.dart';
import '../Provider/BTProvider.dart';

class BTFlashScoreScreen extends StatefulWidget {
  const BTFlashScoreScreen({Key? key}) : super(key: key);

  @override
  State<BTFlashScoreScreen> createState() => _BTFlashScoreScreenState();
}

class _BTFlashScoreScreenState extends State<BTFlashScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BTProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(provider.currentScreenTitle),
          ),
          body: const BTLoadingComponent(
              child: BTBackgroundComponent(
            child: Center(),
          )),
          drawer: const BTDrawerComponent(),
        );
      },
    );
  }
}
