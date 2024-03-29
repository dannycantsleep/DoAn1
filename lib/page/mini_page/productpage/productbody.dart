import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:do_an/data/model/productmodel.dart';
import 'package:do_an/conf/const.dart';

Widget itemListView(Product productModel) {
  return Container(
    margin: EdgeInsets.all(4),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            url_product_img + productModel.img!,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.name ?? '',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                '${NumberFormat('###,###').format(productModel.price)}đ',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
        Container(
          width: 30, // Giảm kích thước của nút
          height: 30, // Giảm kích thước của nút
          margin: EdgeInsets.only(left: 8, top: 30),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 14, // Đặt kích thước của icon
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              // Xử lý khi nút được nhấn
            },
          ),
        ),
      ],
    ),
  );
}

Widget productList(List<Product> products) {
  return ListView(
    children: products.map((product) => itemListView(product)).toList(),
  );
}
