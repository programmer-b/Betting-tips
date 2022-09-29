import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:bettingtips/Components/BTTopMenuLayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/BTBackgroundComponent.dart';
import '../Components/BTDrawerComponent.dart';
import '../Provider/BTProvider.dart';

class BTDailyAccaTipsScreen extends StatefulWidget {
  const BTDailyAccaTipsScreen({Key? key}) : super(key: key);

  @override
  State<BTDailyAccaTipsScreen> createState() => _BTDailyAccaTipsScreenState();
}

class _BTDailyAccaTipsScreenState extends State<BTDailyAccaTipsScreen> {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [BTTopMenuLayout()],
                    )),
          )),
          drawer: const BTDrawerComponent(),
        );
      },
    );
  }
}
