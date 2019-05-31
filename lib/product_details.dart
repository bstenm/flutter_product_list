import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetails(this.title, this.imageUrl);

  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl),
          Text(title),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
                color: Theme.of(ctx).accentColor,
                child: Text('DELETE'),
                onPressed: () {
                  return showDialog(
                    context: ctx,
                    builder: (_) {
                      return AlertDialog(
                        actions: <Widget>[
                          FlatButton(
                            child: Text('CANCEL'),
                            onPressed: () => Navigator.pop(ctx),
                          ),
                          FlatButton(
                            child: Text('CONTINUE'),
                            onPressed: () {
                              Navigator.pop(ctx);
                              Navigator.pop(ctx, true);
                            },
                          ),
                        ],
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
