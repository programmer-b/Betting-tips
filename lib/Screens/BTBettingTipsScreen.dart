import 'package:bettingtips/Components/BTBackgroundComponent.dart';
import 'package:bettingtips/Components/BTDrawerComponent.dart';
import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../Provider/BTProvider.dart';

class BTBettingTipsScreen extends StatefulWidget {
  const BTBettingTipsScreen({Key? key}) : super(key: key);

  @override
  State<BTBettingTipsScreen> createState() => _BTBettingTipsScreenState();
}

class _BTBettingTipsScreenState extends State<BTBettingTipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BTProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(provider.currentScreenTitle),
          ),
          body: BTLoadingComponent(
              child: BTBackgroundComponent(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Text(
                  provider.dummyText,
                  style: secondaryTextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
          drawer: const BTDrawerComponent(),
        );
      },
    );
  }
}