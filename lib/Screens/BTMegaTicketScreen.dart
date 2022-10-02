import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:bettingtips/Components/BTTopMenuLayout.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../Commons/BTColors.dart';
import '../Commons/BTStrings.dart';
import '../Components/BTBackgroundComponent.dart';
import '../Components/BTDrawerComponent.dart';
import '../Model/BTAllTipsModel.dart';
import '../Provider/BTProvider.dart';
import 'package:bettingtips/Commons/BTEnums.dart';

class BTMegaTicketScreen extends StatefulWidget {
  const BTMegaTicketScreen({Key? key}) : super(key: key);

  @override
  State<BTMegaTicketScreen> createState() => _BTMegaTicketScreenState();
}

class _BTMegaTicketScreenState extends State<BTMegaTicketScreen> {
  String getTotalOdds(table){
    var initOdds = 1.0;
    for(int index=5;index < time[table].length - 3;index++) {
      if (index % 2 != 0) continue;
      dynamic nextOdds = odds[table][index] ?? "1.0";
      nextOdds = nextOdds.toString().toDouble();
      initOdds = initOdds * nextOdds;
    }
    return initOdds.toStringAsFixed(2).toString();
  }
  List<DataColumn> columns(table) => [
    DataColumn(
        label: SizedBox(
          child: Text(
            'DATE',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
    DataColumn(
        label: SizedBox(
          child: Text(
            'COUNTRY',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
    DataColumn(
        label: SizedBox(
          child: Text(
            'MATCH',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
    DataColumn(
        label: SizedBox(
          child: Text(
            'TIPS',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
    DataColumn(
        label: SizedBox(
          child: Text(
            'ODDS',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
    DataColumn(
        label: SizedBox(
          child: Text(
            'F/T',
            style: boldTextStyle(size: 12, color: btPrimaryTextColor),
          ),
        )),
  ];
  List<DataCell> cells(table, row) => [
    DataCell(SizedBox(
      width: 30,
      child: Text(
        time[table][row] ?? "null",
        style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
      ),
    )),
    DataCell(SizedBox(
      width: 50,
      child: Text(
        countries[table][row]?.substring(0, 3).toUpperCase() ?? "null",
        style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
      ),
    )),
    DataCell(SizedBox(
      width: 80,
      child: Text(
        teams[table][row] ?? "null",
        style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
      ),
    )),
    DataCell(Text(
      tips[table][row] ?? "null",
      style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
    ).center()),
    DataCell(SizedBox(
      width: 30,
      child: Text(
        odds[table][row] ?? "null",
        style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
      ),
    )),
    DataCell(Container(
      color: results[table][row] == '?'
          ? Colors.transparent
          : resultColorCodes[table][row]?.toColor(),
      padding: EdgeInsets.zero,
      height: 34,
      width: 60,
      child: Text(
        results[table][row]?.replaceAll("?", "") ??
            "null",
        style: primaryTextStyle(size: 12, color: btPrimaryTextColor),
      ).center(),
    ))
  ];
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
                      children: [const BTTopMenuLayout(),                    Column(
                        children: [
                          for (int table = 0; table < dates.length; table++)
                            Column(
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'THE MEGA',
                                          style: boldTextStyle(
                                              color: Colors.red[900])),
                                      TextSpan(
                                          text: ' TIPS OF TODAY ',
                                          style: boldTextStyle(
                                              color: btPrimaryTextColor)),
                                      TextSpan(
                                          text: dates[table]?.lastChars(10),
                                          style: boldTextStyle(
                                              color: btHeaderDateColor)),
                                      TextSpan(
                                          text: ' WITH TOTAL ODDS ',
                                          style: boldTextStyle(
                                              color: btPrimaryTextColor)),
                                      TextSpan(
                                          text: ' ${getTotalOdds(table)}',
                                          style: boldTextStyle(
                                              color: btPrimaryTextColor)),
                                    ])).paddingSymmetric(horizontal: 16, vertical: 8),
                                DataTable(
                                    columnSpacing: 15,
                                    dataRowHeight: 34,
                                    headingRowHeight: 34,
                                    headingRowColor:
                                    MaterialStateColor.resolveWith(
                                            (states) => btBackgroundBlueColor),
                                    border: TableBorder.all(
                                      color: Colors.grey,
                                    ),
                                    columns: columns(table),
                                    rows:[
                                      for(int index=5;index < time[table].length - 3;index++)
                                        if(index%2 != 0)
                                        DataRow(
                                            cells: cells(
                                                table, index))
                                    ]).paddingAll(8),
                              ],
                            ),
                          Text(
                            btBottomMessage,
                            style:
                            primaryTextStyle(color: btTableHeaderTextColor),
                          ).paddingAll(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.copyright_outlined,
                                color: btTableHeaderTextColor,
                              ),
                              5.width,
                              Text(
                                'Dantech',
                                style:
                                boldTextStyle(color: btTableHeaderTextColor),
                              )
                            ],
                          ).paddingAll(30).center(),
                        ],
                      )],
                    )),
          )),
          drawer: const BTDrawerComponent(),
        );
      },
    );
  }
}
