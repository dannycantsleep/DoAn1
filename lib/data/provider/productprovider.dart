import 'package:flutter/services.dart';
import 'package:do_an/data/model/productmodel.dart';
import 'dart:convert';

class ReadData {
  Future<List<Product>> loadData() async {
    var data = await rootBundle.loadString("assets/files/productlist.json");
    var dataJson = jsonDecode(data);
    return (dataJson['data'] as List).map((e) => Product.fromJson(e)).toList();
  }

  Future<Iterable<Product>> loadDataCat(int catId) async {
    var data = await rootBundle.loadString("assets/files/productlist.json");
    var dataJson = jsonDecode(data);
    return (dataJson['data'] as List)
        .map((e) => Product.fromJson(e))
        .where((e) => e.catId == catId)
        .toList();
  }
}
