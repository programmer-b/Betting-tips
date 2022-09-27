// ignore_for_file: file_names

import 'dart:async';
import 'dart:io';

import 'package:bettingtips/Commons/BTMenu.dart';
import 'package:bettingtips/Commons/BTStrings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:html/dom.dart' as dom;
import '../Commons/BTInfo.dart';

class BTProvider with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  String _currentScreenTitle = menu[0]['name'];
  String get currentScreenTitle => _currentScreenTitle;

  Future<void> init() async {
    _currentScreenTitle = menu[0]['name'];
    _currentIndex = 0;
  }

  Future<void> updateScreen(context, {required final int index}) async {
    var menus = List.from(menu)..addAll(info);
    log('NEW MENU LENGTH: ${menus.length}');

    _currentIndex = index;
    _currentScreenTitle = menus[index]['name'];
    notifyListeners();

    await 50.milliseconds.delay;

    Widget? newScreen = menus[index]['route'];
    log('NAVIGATING TO THIS INDEX: $index');
    newScreen.launch(context,
        isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
  }

  bool _btLoadSuccess = false;
  bool get btLoadSuccess => _btLoadSuccess;

  bool _btLoading = true;
  bool get btLoading => _btLoading;

  String _btConnectionErrorMessage = btUnknownError;
  String get btConnectionErrorMessage => _btConnectionErrorMessage;

  void _dataInit() {
    _btLoadSuccess = false;
    _btLoading = true;
    notifyListeners();
  }

  String _dummyText = '';
  String get dummyText => _dummyText;

  Future<void> btLoadAndStractureData() async {
    await 200.milliseconds.delay;
    _dataInit();
    final webData = await btGetDataFromNetwork(uri: Uri.parse(btBaseUrl));
    final html = dom.Document.html(webData.body);

    //#table-tipsbet > tbody > tr:nth-child(2) > td:nth-child(1) > strong > span

    final time1 = html
        .querySelectorAll('#table-tipsbet > tbody')
        .map((e) => e.innerHtml.trim())
        .toList();
    final html2 = dom.Document.html(time1[0]);
    final time2 = html2
        .querySelectorAll('td')
        .map((e) => e.innerHtml.trim())
        .toList();
    _dummyText = time2.toString();

    log('TIME LENGTH: ${time2.length}');
    notifyListeners();
  }

  Future<Response> btGetDataFromNetwork({required Uri uri}) async {
    try {
      final data = await http.get(uri).timeout(const Duration(seconds: 15),
          onTimeout: () =>
              throw TimeoutException('Can\'t connect in 15 seconds.'));
      _btLoadSuccess = true;
      _btLoading = false;
      notifyListeners();
      return data;
    } on TimeoutException {
      _btConnectionErrorMessage = btConnectionTimeoutError;
      _btLoading = false;
      notifyListeners();
      rethrow;
    } on SocketException {
      _btConnectionErrorMessage = btSocketExceptionError;
      _btLoading = false;
      notifyListeners();
      rethrow;
    } catch (e) {
      _btLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}
