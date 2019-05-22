import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/lake.jpg'),
            Text('Lake'),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(ctx).accentColor,
                child: Text('Back'),
                onPressed: () => Navigator.pop(ctx),
              ),
            )
          ],
        ),
      ),
    );
  }
}
