import 'package:flutter/material.dart';
import 'package:do_an/page/mini_page/productpage/productbody.dart';
import 'package:do_an/data/model/categorymodel.dart';
import 'package:do_an/data/model/productmodel.dart';
import 'package:do_an/data/provider/productprovider.dart';

class ProductWidget extends StatefulWidget {
  final Category objCat;
  const ProductWidget({Key? key, required this.objCat}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  late List<Product> lstProduct = [];

  Future<void> loadProdList(int catId) async {
    lstProduct = await ReadData().loadDataCat(catId) as List<Product>;
  }

  @override
  void initState() {
    super.initState();
    lstProduct = [];
    if (widget.objCat.id != null) {
      loadProdList(widget.objCat.id!);
    } else {
      print('Error: Category ID is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.objCat.name.toString()}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder<void>(
          future: loadProdList(widget.objCat.id!),
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: lstProduct.length,
                itemBuilder: (context, index) {
                  return itemListView(lstProduct[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
