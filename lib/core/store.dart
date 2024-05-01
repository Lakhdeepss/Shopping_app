import 'package:appc/models/cart.dart';
import 'package:appc/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late catalogModels catalog;
  late CartModel cart;
  MyStore() {
    catalog = catalogModels();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
