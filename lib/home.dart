import 'package:flutter/material.dart';

import 'api_services.dart';
import 'product_details.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiServices().getData();

    return Scaffold(
        appBar: AppBar(),
        body: ValueListenableBuilder(
            valueListenable: dataNotifier,
            builder: (context, value, _) {
              return ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  final data = value[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetails(productModel: data),
                            ));
                      },
                      title: Text(data.title),
                      subtitle: Text(data.price.toString()),
                    ),
                  );
                },
              );
            }));
  }
}
