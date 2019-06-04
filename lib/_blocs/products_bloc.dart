import 'dart:async';
import 'bloc_provider.dart';

class ProductsBloc implements BlocBase {
  StreamController _productsCtlr = StreamController();
  Stream get outStream => _productsCtlr.stream;

  @override
  void dispose() {
    _productsCtlr.close();
  }

  void addProduct() {
    _productsCtlr.sink.add([
      {'title': 'Laky', 'imageUrl': 'images/lake.jpg'}
    ]);
  }
}
