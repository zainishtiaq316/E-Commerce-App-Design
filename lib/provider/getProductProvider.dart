import 'dart:convert';

import 'package:ecommerceapp/Model/ProductModel.dart';
import 'package:ecommerceapp/config/config.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  bool _isloading = true;
  bool get isloading => _isloading;

  List<ProductModel> _products = [];

  List<ProductModel> get product => _products;

  Future<void> fetchProductswithId(categoryId) async {
    _isloading = true;
    print("idofcat" + categoryId);
    final String Product_urlhere =
        '${Config.url}${Config.productsURL}?category=$categoryId&consumer_key=${Config.key}&consumer_secret=${Config.secret}&per_page=100';
    print(Product_urlhere);
    final Url = Uri.parse(Product_urlhere);
    final response = await http.get(Url);

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      var productData = jsonData;
      _products = [];
      print(productData);
      productData.forEach((data) => _products.add(ProductModel.fromJson(data)));
      _isloading = false;

      notifyListeners();
    } else {
      _isloading = true;
      throw Exception("Failed to load products");
    }
  }
}
