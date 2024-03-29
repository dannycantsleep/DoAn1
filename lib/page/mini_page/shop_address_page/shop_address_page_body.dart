import 'package:do_an/data/model/addressmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../conf/const.dart';

Widget itemAddrView(Address itemaddr, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[300], // Đặt màu nền xám
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Thanh tìm kiếm

        // Widget hiển thị địa chỉ
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(color: Color.fromARGB(255, 253, 253, 253)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6)),
                child: Image.asset(url_address_img + itemaddr.img!,
                    fit: BoxFit.cover),
              ),
              SizedBox(width: 15), // Khoảng cách giữa hình ảnh và văn bản
              Expanded(
                child: Column(
                  // Sử dụng Column để chứa cả hai Text
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemaddr.name!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      itemaddr.subname!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
