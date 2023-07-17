import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

ValueNotifier<List<ProductModel>> dataNotifier = ValueNotifier([]);

class ApiServices {
  void getData() async {
    const url = 'https://fakestoreapi.com/products';
    final response = await http.get(Uri.parse(url));
    final result = (json.decode(response.body) as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();

    dataNotifier.value.addAll(result);
    dataNotifier.notifyListeners();
  }
}
