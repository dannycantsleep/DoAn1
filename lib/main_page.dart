import 'package:do_an/data/model/categorymodel.dart';
import 'package:do_an/data/model/productmodel.dart';
import 'package:do_an/page/mini_page/category/categorywidget.dart';
import 'package:do_an/page/mini_page/home_page.dart';
import 'package:do_an/page/mini_page/productpage/productwidget.dart';
import 'package:flutter/material.dart';
import 'page/mini_page/shop_address_page/shop_address_page_widget.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  static final List<Widget> _pages = <Widget>[
    // Đặt các trang tương ứng với mỗi mục ở đây
    HomePage(),
    CategoryWidget(),
    MyShopAddressPage(),
    // Thêm các trang khác nếu cần
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index); // Điều hướng đến trang tương ứng
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THE COFFEE HEM'),
        centerTitle: true, // Đặt tiêu đề vào giữa
        leading: IconButton(
          icon: Icon(Icons.menu), // Icon bên trái
          onPressed: () {
            // Xử lý khi nhấn vào icon bên trái
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), // Icon bên phải
            onPressed: () {
              // Xử lý khi nhấn vào icon bên phải
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.orange),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
            activeIcon: Icon(Icons.home, color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Đặt hàng',
            activeIcon: Icon(Icons.coffee, color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Cửa hàng',
            activeIcon: Icon(Icons.shop, color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Ưu đãi',
            activeIcon: Icon(Icons.confirmation_number, color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            label: 'Khác',
            activeIcon: Icon(Icons.dehaze, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
