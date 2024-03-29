import 'package:flutter/material.dart';
import 'package:do_an/data/provider/categoryprovider.dart';
import 'package:do_an/data/model/categorymodel.dart';
import 'categorybody.dart';
import 'package:do_an/conf/const.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryWidget> {
  List<Category> lstCate = [];
  Future<String> loadCateList() async {
    lstCate = await ReadData().loadData();
    return '';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCateList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadCateList(),
      builder: (BuildContext conntext, AsyncSnapshot<String> snapshot) {
        return Center(
          child: Column(
            children: [
              const Text(
                "Category",
                style: titleStyle,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: lstCate.length,
                      itemBuilder: (conntext, index) {
                        return itemCateView(lstCate[index], context);
                      }))
            ],
          ),
        );
      },
    );
  }
}
