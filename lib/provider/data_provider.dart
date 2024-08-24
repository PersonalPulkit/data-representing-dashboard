

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interwiew_assignment/repository/datamodel.dart';

class DataProvider extends ChangeNotifier{

  Data? _data ;
  Future<void> loadData() async {
    final String response = await rootBundle.loadString('images/data.json');
    _data = dataFromJson(response); // Assuming Data is the class generated from dataFromJson
    notifyListeners();
  }

  get data => _data;
}