import 'dart:convert';

class Product {
  int? id;
  String? name;
  String? img;
  int? price;
  String? des;
  int? catId;
  Product({this.id, this.name, this.img, this.price, this.des, this.catId});
  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    price = json['price'];
    des = json['des'];
    catId = json['catId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['price'] = price;
    data['des'] = des;
    data['catId'] = catId;
    return data;
  }
}
