import 'package:flutter/material.dart';
import '../productpage/productwidget.dart';
import 'package:do_an/data/model/categorymodel.dart';

Widget itemCateView(Category itemcate, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductWidget(objCat: itemcate),
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 236, 236, 236),
        //borderRadius: BorderRadius.circular(15), // Thêm borderRadius vào đây
      ),
      child: Center(
        child: Text(
          itemcate.name ?? '', // Sử dụng tên của itemcate
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    ),
  );
}
