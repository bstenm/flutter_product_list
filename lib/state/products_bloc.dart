import 'package:flutter/widgets.dart';

class ProductsBloc with ChangeNotifier {
  List<Map<String, String>> _products = [
    {'title': 'Food Tester', 'imageUrl': 'images/lake.jpg'}
  ];

  List<Map<String, String>> get products => _products;

  set products(product) {
    _products = product;
    notifyListeners();
  }

  void addProduct() {
    _products.add(
      {'title': 'Lakyy', 'imageUrl': 'images/lake.jpg'}
    );
    notifyListeners();
  }

  void deleteProduct(index) {
    _products.removeAt(index);
    notifyListeners();
  }
}
