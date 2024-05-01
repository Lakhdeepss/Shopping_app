import 'dart:convert';
// import 'dart:html';

import 'package:appc/core/store.dart';
import 'package:appc/models/cart.dart';
import 'package:appc/models/catalog.dart';
import 'package:appc/util/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJSon = jsonDecode(catalogJson);
    var productsData = decodeJSon["products"];
    catalogModels.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;

    // final dummylist = List.generate(20, (index) => catalogModels.items[0]);
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (BuildContext context, store, VxStatus? status) =>
            FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.cartRoute);
                    },
                    // ignore: deprecated_member_use
                    backgroundColor: Colors.blue,
                    child: Icon(
                      CupertinoIcons.cart,
                    ))
                .badge(
                    color: Colors.red,
                    size: 20,
                    count: _cart.items.length,
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
      ),

      // appBar: AppBar(
      //   title: Text('Catalog App'),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(25.0),
      //   child: (catalogModels.items != null && catalogModels.items.isNotEmpty)
      //       ?
      // ListView.builder(
      //     itemCount: catalogModels.items.length,
      //     itemBuilder: (context, index) {
      //       return ItemWidget(
      //         item: catalogModels.items[index],
      //       );
      //     },
      //   )
      //       GridView.builder(
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             mainAxisSpacing: 16,
      //             crossAxisSpacing: 16,
      //           ),
      //           itemBuilder: (context, index) {
      //             final item = catalogModels.items[index];
      //             return Card(
      //               child: GridTile(
      //                 child: Image.network(item.image),
      //                 header: Text(item.name),
      //                 footer: Text(item.price.toString()),
      //               ),
      //             );
      //           },
      //           itemCount: catalogModels.items.length,
      //         )
      //       : Center(
      //           child: CircularProgressIndicator(),
      //         ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if (catalogModels.items != Null && catalogModels.items.isNotEmpty)
                catalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
    // drawer: MyDrawer());
  }
}
