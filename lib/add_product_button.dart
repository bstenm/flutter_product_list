import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  AddProductButton(this.add);

  final Function add;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: add,
        child: Text('Add Product'),
      ),
    );
  }
}
