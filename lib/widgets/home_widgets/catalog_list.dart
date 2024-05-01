import 'package:appc/pages/homeDetail_page.dart';
import 'package:flutter/material.dart';
import 'package:appc/models/catalog.dart';

import 'catalog_item.dart';

class catalogList extends StatefulWidget {
  @override
  State<catalogList> createState() => _catalogListState();
}

class _catalogListState extends State<catalogList> {
  // const catalogList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: catalogModels.items.length,
        itemBuilder: (context, index) {
          final catalog = catalogModels.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homeDetailPage(
                  catalog: catalog,
                ),
              ),
            ),
            child: catalogItem(catalog: catalog),
          );
        });
  }
}
