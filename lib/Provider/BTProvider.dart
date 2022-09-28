// ignore_for_file: file_names

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bettingtips/Commons/BTMenu.dart';
import 'package:bettingtips/Commons/BTStrings.dart';
import 'package:bettingtips/Model/BTAllTipsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart' hide log;
import 'package:html/parser.dart';
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
    var document = parse(webData.body);

    var tableData =
        document.getElementsByClassName('width100 first last')[0].children;

    var numberOfTables = 5;

    int table = 0;

    while (table < numberOfTables) {
      var rowData = tableData[table].getElementsByTagName('tr');
      int row = 1;
      var numberOfRows = 12;

      while (row < numberOfRows) {
        var columnData = rowData[row].getElementsByTagName('td');
        int column = 0;
        var numberOfColumns = columnData.length;

        int currentRow = row - 1;

        var date = tableData[table]
                .getElementsByClassName('title')[0]
                .getElementsByTagName('a')[0]
                .attributes['title'] ??
            "";
        dummy[table][currentRow]["date"] = date;

        while (column < numberOfColumns) {
          switch (column) {
            case 0:
              dummy[table][currentRow]["time"] =
                  columnData[0].getElementsByTagName('strong')[0].text;

              log("TIME AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[0].getElementsByTagName('strong')[0].text}");

              break;
            case 1:
              dummy[table][currentRow]["flag_url"] = columnData[1]
                      .getElementsByTagName('img')[0]
                      .attributes['src'] ??
                  "";
              log("FLAG URL AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[1].getElementsByTagName('img')[0].attributes['src']}");
              break;
            case 2:
              dummy[table][currentRow]["country"] =
                  columnData[2].getElementsByTagName('strong')[0].text;

              log("COUNTRY AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[2].getElementsByTagName('strong')[0].text}");
              break;
            case 3:
              dummy[table][currentRow]["sport"] = columnData[3]
                      .getElementsByTagName('img')[0]
                      .attributes['alt'] ??
                  "";

              log("SPORT AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[3].getElementsByTagName('img')[0].attributes['alt']}");
              break;
            case 4:
              dummy[table][currentRow]["competitions"] =
                  columnData[4].getElementsByTagName('strong')[0].text;

              log("COMPETITIONS AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[4].getElementsByTagName('strong')[0].text}");
              break;
            case 5:
              dummy[table][currentRow]["teams"] =
                  columnData[5].getElementsByTagName('strong')[0].text;
              log("TEAMS AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[5].getElementsByTagName('strong')[0].text}");
              break;
            case 6:
              dummy[table][currentRow]["tip"] =
                  columnData[6].getElementsByTagName('strong')[0].text;
              log("TIP AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[6].getElementsByTagName('strong')[0].text}");
              break;
            case 7:
              dummy[table][currentRow]["odds"] =
                  columnData[7].getElementsByTagName('strong')[0].text;
              log("ODDS AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[7].getElementsByTagName('strong')[0].text}");
              break;
            case 8:
              dummy[table][currentRow]["results"] =
                  columnData[8].getElementsByTagName('strong')[0].text;
              log("RESULTS AT TABLE: ${table + 1} :: ROW $currentRow :: COLUMN ${column + 1} :: SET TO  => ${columnData[8].getElementsByTagName('strong')[0].text}");
              break;
          }

          column++;
        }

        row++;
      }

      table++;
    }
    log('$dummy');

    notifyListeners();
  }

  Future<Response> btGetDataFromNetwork({required Uri uri}) async {
    try {
      final data = await http.get(uri).timeout(const Duration(seconds: 300),
          onTimeout: () =>
              throw TimeoutException('Can\'t connect in 300 seconds.'));
      if (data.statusCode == 200) {
        _btLoadSuccess = true;
        _btLoading = false;
        notifyListeners();
        return data;
      } else {
        _btLoading = false;
        notifyListeners();
        throw Exception();
      }
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
