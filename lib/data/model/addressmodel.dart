// ignore: unused_import
import 'dart:convert';

class Address {
  int? id;
  String? name;
  String? subname;
  String? img;

  Address({
    this.id,
    this.name,
    this.subname,
    this.img,
  });

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    subname = json['subname'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['subname'] = subname;
    data['img'] = img;
    return data;
  }
}
