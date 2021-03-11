import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    products: List<String>.generate(500, (i) => "Product List: $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> products;

  MyApp({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Long List Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${products[index]}'),
            );
          },
        ),
      ),
    );
  }
}