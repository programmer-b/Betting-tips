import 'package:bettingtips/Screens/BTBetOfTodayScreen.dart';
import 'package:bettingtips/Screens/BTBettingTipsScreen.dart';
import 'package:bettingtips/Screens/BTComboTicketScreen.dart';
import 'package:bettingtips/Screens/BTDailyAccaTipsScreen.dart';
import 'package:bettingtips/Screens/BTFlashScoreScreen.dart';
import 'package:bettingtips/Screens/BTGoldTicketScreen.dart';
import 'package:bettingtips/Screens/BTMegaTicketScreen.dart';
import 'package:bettingtips/Screens/BTOverNightTipsScreen.dart';
import 'package:bettingtips/Screens/BTStatiquesScreen.dart';
import 'package:bettingtips/Screens/BTSupportUsScreen.dart';
import 'package:flutter/material.dart';

const List<Map<String, dynamic>> menu = [
  {
    "name": "BETTING TIPS",
    "icon": Icons.home_outlined,
    "route": BTBettingTipsScreen()
  },
  {
    "name": "DAILY ACCA TIPS",
    "icon": Icons.favorite_outline,
    "route": BTDailyAccaTipsScreen()
  },
  {
    "name": "COMBO TICKET",
    "icon": Icons.auto_graph_outlined,
    "route": BTComboTicketScreen()
  },
  {
    "name": "BET OF TODAY",
    "icon": Icons.thumb_up_outlined,
    "route": BTBetOfTodayScreen()
  },
  {
    "name": "GOLD TICKET",
    "icon": Icons.star_outline,
    "route": BTGoldTicketScreen()
  },
  {
    "name": "MEGA TICKET",
    "icon": Icons.sentiment_satisfied_outlined,
    "route": BTMegaTicketScreen()
  },
  {
    "name": "OVERNIGHT TIPS",
    "icon": Icons.rocket_launch_outlined,
    "route": BTOverNightTipsScreen()
  },
];
