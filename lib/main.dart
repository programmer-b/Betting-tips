import 'package:bettingtips/Screens/BTBettingTipsScreen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'Provider/BTProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BTProvider(),
      child: MaterialApp(
        title: 'Premium betting tips',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: RestartAppWidget(
          child: Builder(builder: (context) {
            context.read<BTProvider>().btLoadAndStructureData();
            return const BTBettingTipsScreen();
          }),
        ),
      ),
    );
  }
}
