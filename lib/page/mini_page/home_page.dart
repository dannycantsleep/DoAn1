import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an/page/mini_page/productpage/productwidget.dart'; // Import ProductWidget để sử dụng danh sách sản phẩm
import 'package:do_an/data/model/categorymodel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'SẮP RA MẮT',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: const Color.fromARGB(255, 246, 173, 65),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Banner quảng cáo
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 4 / 3,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.5,
            ),
            items: [
              // List các Widget là các mục trong Carousel
              // Đây là các mục bạn muốn hiển thị trong Carousel
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/licf.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/licf2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/licf3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Thêm các mục khác nếu cần
            ],
          ),
          // Danh sách ưu đãi
          ListTile(
            title: Text('Special Offers'),
            subtitle: Text('Exclusive deals just for you!'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Điều hướng đến trang danh sách ưu đãi
            },
          ),
          // Danh sách sản phẩm
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(
                objCat: Category(id: 1, name: 'Bánh Ngọt & Snack')),
          ),
          Container(
            height: 400,
            // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(objCat: Category(id: 2, name: 'Cafe Máy')),
          ),
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child:
                ProductWidget(objCat: Category(id: 3, name: 'Cafe Việt Nam')),
          ),
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(objCat: Category(id: 4, name: 'Chocolate')),
          ),
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(
                objCat: Category(id: 5, name: 'Trà Sữa Macchiato')),
          ),
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(objCat: Category(id: 6, name: 'Trà Trái Cây')),
          ),
          Container(
            height: 400, // hoặc kích thước cụ thể khác tùy vào nhu cầu
            child: ProductWidget(objCat: Category(id: 7, name: 'Trà Xanh')),
          ),
          // Sử dụng ProductWidget để hiển thị danh sách sản phẩm
          // Các phần khác của trang
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
