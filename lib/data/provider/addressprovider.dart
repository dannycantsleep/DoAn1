import '../model/addressmodel.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class ReadData {
  Future<List<Address>> loadData() async {
    var data = await rootBundle.loadString("assets/files/addresslist.json");
    var dataJson = jsonDecode(data);
    return (dataJson['data'] as List).map((e) => Address.fromJson(e)).toList();
  }
}
