import 'package:flutter/material.dart';
import 'model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Text('Title'),
            title: Text(
              productModel.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ListTile(
            leading: const Text('Price'),
            title: Text(
              productModel.price.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Description:',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              productModel.description,
            ),
          ),
        ],
      ),
    );
  }
}
