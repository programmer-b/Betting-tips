import 'package:bettingtips/Components/BTLoadingComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Components/BTBackgroundComponent.dart';
import '../Components/BTDrawerComponent.dart';
import '../Provider/BTProvider.dart';

class BTComboTicketScreen extends StatefulWidget {
  const BTComboTicketScreen({Key? key}) : super(key: key);

  @override
  State<BTComboTicketScreen> createState() => _BTComboTicketScreenState();
}

class _BTComboTicketScreenState extends State<BTComboTicketScreen> {
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
