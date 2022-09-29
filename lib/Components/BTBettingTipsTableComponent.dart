import 'package:bettingtips/Commons/BTColors.dart';
import 'package:bettingtips/Commons/BTStrings.dart';
import 'package:bettingtips/Components/BTMovingTextComponent.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../Provider/BTProvider.dart';

class BTBettingTipsTableComponent extends StatelessWidget {
  const BTBettingTipsTableComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration headerDecoration = const BoxDecoration(
        color: btBackgroundBlueColor,
        border: Border(bottom: BorderSide(color: Colors.grey), top: BorderSide(color: Colors.grey)));
    BoxDecoration bodyDecoration = const BoxDecoration(
        color: btBackgroundTransparentColor,
        border: Border(bottom: BorderSide(color: Colors.grey)));
    return Consumer<BTProvider>(
      builder: (context, provider, child) {
        double width = MediaQuery.of(context).size.width;
        Widget tipsTable() => Column(
              children: [
                Container(
                  height: 25,
                  decoration: headerDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.circle, size: 14, color: Colors.red,),
                      Text(' Bulgarian Pr.League - 17:15 GMT - ', style: boldTextStyle(color: btPrimaryTextColor, size: 12),),
                      for(int i=0;i<5;i++) const Icon(Icons.star,color: Colors.orange, size: 14,)
                    ],
                  )
                ),
                Container(
                    height: 25,
                    decoration: bodyDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Arda FK - Hebar Pazardzhik', style: secondaryTextStyle(color: btPrimaryTextColor),).withWidth(width * 0.55),
                        const VerticalDivider(color: Colors.grey,),
                        Text('home win', style: secondaryTextStyle(color: btPrimaryTextColor)).withWidth(((width-40) -(width*0.6))/2),
                        const VerticalDivider(color: Colors.grey,),
                        Text('1.33', style: secondaryTextStyle(color: btPrimaryTextColor)).withWidth(((width-40) -(width*0.6))/2),
                      ],
                    ).paddingSymmetric(horizontal: 5)
                ),
                Container(
                    height: 25,
                    decoration: bodyDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Final results', style: secondaryTextStyle(color: btPrimaryTextColor),).withWidth(width * 0.55),
                        const VerticalDivider(color: Colors.grey,),
                        Text('home win', style: secondaryTextStyle(color: btPrimaryTextColor)).withWidth(((width-34) -(width*0.6))/2),
                      ],
                    ).paddingSymmetric(horizontal: 5)
                ),
              ],
            );
        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              BTMovingTextComponent(
                textColor: btTableHeaderTextColor,
                text: btHeaderMessage,
                decoration: headerDecoration,
              ),
              tipsTable()
            ],
          ).withWidth(double.infinity),
        );
      },
    );
  }
}
