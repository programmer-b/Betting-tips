import 'package:bettingtips/Commons/BTColors.dart';
import 'package:bettingtips/Commons/BTStrings.dart';
import 'package:bettingtips/Components/BTBackgroundComponent.dart';
import 'package:bettingtips/Components/BTBettingTipsTableComponent.dart';
import 'package:bettingtips/Components/BTDrawerComponent.dart';
import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:bettingtips/Components/BTTopMenuLayout.dart';
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const BTTopMenuLayout(),
                    Text(
                      btTableHeaderMessage,
                      style: boldTextStyle(color: btTableHeaderTextColor),
                    ).paddingSymmetric(vertical: 8),
                    const BTBettingTipsTableComponent(),
                    Text(
                      btBottomMessage,
                      style: primaryTextStyle(color: btTableHeaderTextColor),
                    ).paddingAll(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.copyright_outlined, color: btTableHeaderTextColor,),
                        5.width,
                        Text(
                          'Dantech',
                          style: boldTextStyle(color: btTableHeaderTextColor),
                        )
                      ],
                    ).paddingAll(30).center(),
                  ],
                )),
          )),
          drawer: const BTDrawerComponent(),
        );
      },
    );
  }
}
