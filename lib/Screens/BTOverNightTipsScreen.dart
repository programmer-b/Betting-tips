import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:bettingtips/Components/BTTopMenuLayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/BTBackgroundComponent.dart';
import '../Components/BTDrawerComponent.dart';
import '../Provider/BTProvider.dart';

class BTOverNightTipsScreen extends StatefulWidget {
  const BTOverNightTipsScreen({Key? key}) : super(key: key);

  @override
  State<BTOverNightTipsScreen> createState() => _BTOverNightTipsScreenState();
}

class _BTOverNightTipsScreenState extends State<BTOverNightTipsScreen> {
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
