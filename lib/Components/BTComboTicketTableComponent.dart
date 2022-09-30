import 'package:bettingtips/Commons/BTColors.dart';
import 'package:bettingtips/Commons/BTStrings.dart';
import 'package:bettingtips/Components/BTMovingTextComponent.dart';
import 'package:bettingtips/Model/BTAllTipsModel.dart';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import 'package:bettingtips/Commons/BTEnums.dart';

import '../Provider/BTProvider.dart';

class BTComboTicketTableComponent extends StatelessWidget {
  const BTComboTicketTableComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration headerDecoration = BoxDecoration(
        color: btBackgroundBlueColor, border: Border.all(color: Colors.grey));
    BoxDecoration bodyDecoration = const BoxDecoration(
        color: btBackgroundTransparentColor,
        border: Border(bottom: BorderSide(color: Colors.grey)));
    double width = MediaQuery.of(context).size.width;
    return Consumer<BTProvider>(
      builder: (context, provider, child) {
        Widget comboTable(index) => Column(
              children: [
                Text(
                  dates[index]?.lastChars(10) ?? "",
                  style: boldTextStyle(color: btHeaderDateColor),
                ).paddingSymmetric(vertical: 10),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      for (int table = 0; table < 2; table++)
                        Column(
                          children: [
                            Column(
                              children: [
                                _comboTableTitle(width, headerDecoration),
                                for (int childTable = 0;
                                    childTable < 2;
                                    childTable++)
                                  Container(
                                      decoration: bodyDecoration,
                                      height: 34,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                              child: Text(
                                            '${time[index][table + childTable]}',
                                            style: primaryTextStyle(
                                                color: btPrimaryTextColor,
                                                size: 12),
                                          )).withWidth(width * 0.08),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Center(
                                              child: Text(
                                            '${countries[index][table + childTable]?.substring(0, 3).toUpperCase()}',
                                            style: primaryTextStyle(
                                                color: btPrimaryTextColor,
                                                size: 12),
                                          )).withWidth(width * 0.11),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Center(
                                              child: Text(
                                            '${teams[index][table + childTable]}',
                                            style: primaryTextStyle(
                                                color: btPrimaryTextColor,
                                                size: 12),
                                          )).withWidth(width * 0.35),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Center(
                                              child: Text(
                                            '${tips[index][table + childTable]}',
                                            style: primaryTextStyle(
                                                color: btPrimaryTextColor,
                                                size: 12),
                                          )).withWidth(width * 0.08),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Center(
                                              child: Text(
                                            '${odds[index][table + childTable]}',
                                            style: primaryTextStyle(
                                                color: btPrimaryTextColor,
                                                size: 12),
                                          )).withWidth(width * 0.08),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                          ),
                                          Container(
                                            
                                            color: results[index]
                                                        [table + childTable] ==
                                                    '?'
                                                ? Colors.transparent
                                                : resultColorCodes[index]
                                                            [table + childTable]
                                                        ?.toColor() ??
                                                    Colors.transparent,
                                            child: Center(
                                                child: Text(
                                              '${results[index][table + childTable]?.replaceAll("?", "")}',
                                              style: primaryTextStyle(
                                                  color: btPrimaryTextColor,
                                                  size: 12),
                                            )).paddingAll(4),
                                          )
                                        ],
                                      )),
                              ],
                            ),
                            Container(
                                decoration: bodyDecoration,
                                height: 34,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                        child: Text(
                                      '',
                                      style: primaryTextStyle(
                                          color: btPrimaryTextColor, size: 12),
                                    )).withWidth(width * 0.616),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                    ),
                                    Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        for (int i = 0; i < 3; i++)
                                          const Icon(
                                            Icons.star,
                                            size: 10,
                                            color: Colors.orange,
                                          ),
                                      ],
                                    )).withWidth(width * 0.08),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                    ),
                                    Center(
                                        child: Text(
                                      '2.76',
                                      style: primaryTextStyle(
                                          color: btPrimaryTextColor, size: 12),
                                    )).withWidth(width * 0.08),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                    ),
                                    Center(
                                        child: Text(
                                      '',
                                      style: primaryTextStyle(
                                          color: btPrimaryTextColor, size: 12),
                                    ))
                                  ],
                                )),
                          ],
                        ),
                    ],
                  ),
                ).paddingSymmetric(vertical: 10),
              ],
            );

        return Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              BTMovingTextComponent(
                textColor: btTableHeaderTextColor,
                text: btHeaderMessage,
                decoration: headerDecoration,
              ),
              15.height,
              for (int i = 0; i < dates.length; i++) comboTable(i)
            ],
          ),
        );
      },
    );
  }
}

Widget _comboTableTitle(width, decoration) => Container(
    decoration: decoration,
    height: 25,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'TIME',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        )).withWidth(width * 0.08),
        const VerticalDivider(
          color: Colors.grey,
        ),
        Center(
            child: Text(
          'LEAGUE',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        )).withWidth(width * 0.11),
        const VerticalDivider(
          color: Colors.grey,
        ),
        Center(
            child: Text(
          'TEAMS',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        )).withWidth(width * 0.35),
        const VerticalDivider(
          color: Colors.grey,
        ),
        Center(
            child: Text(
          'TIPS',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        )).withWidth(width * 0.08),
        const VerticalDivider(
          color: Colors.grey,
        ),
        Center(
            child: Text(
          'ODDS',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        )).withWidth(width * 0.08),
        const VerticalDivider(
          color: Colors.grey,
        ),
        Center(
            child: Text(
          'F.S',
          style: primaryTextStyle(color: btPrimaryTextColor, size: 12),
        ))
      ],
    ));
