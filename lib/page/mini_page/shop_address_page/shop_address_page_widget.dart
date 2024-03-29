import 'package:do_an/conf/const.dart';
import 'package:do_an/data/model/addressmodel.dart';
import 'package:do_an/data/provider/addressprovider.dart';
import 'package:do_an/page/mini_page/shop_address_page/shop_address_page_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyShopAddressPage());
}

class MyShopAddressPage extends StatefulWidget {
  const MyShopAddressPage({super.key});

  @override
  State<MyShopAddressPage> createState() => _MyShopAddressPageState();
}

class _MyShopAddressPageState extends State<MyShopAddressPage> {
  List<Address> lstAddr = [];
  Future<String> loadAddrList() async {
    lstAddr = await ReadData().loadData();
    return '';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAddrList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadAddrList(),
      builder: (BuildContext conntext, AsyncSnapshot<String> snapshot) {
        return Center(
          child: Column(
            children: [
              const Text(
                "Cửa hàng",
                style: titleStyle,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: lstAddr.length,
                      itemBuilder: (conntext, index) {
                        return itemAddrView(lstAddr[index], context);
                      }))
            ],
          ),
        );
      },
    );
  }
}
