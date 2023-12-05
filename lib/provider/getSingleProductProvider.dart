import 'dart:convert';

import 'package:ecommerceapp/Model/singleProductModel.dart';
import 'package:ecommerceapp/config/config.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class getSingleProductProvider extends ChangeNotifier {
  bool _isloading = true;
  bool get isloading => _isloading;

  SingleProductModel? _products;

  SingleProductModel? get product => _products;

  Future<void> fetchsingleProductswithId(productId) async {
    _isloading = true;
    print("id" + productId);
    String url =
        '${Config.url}${Config.singleProductsURL}${productId}?consumer_key=${Config.key}&consumer_secret=${Config.secret}';
    print(url);
    final Url = Uri.parse(url);
    final response = await http.get(Url);

    final data = jsonDecode(response.body);
    //print(response.toString());
    print(data.toString());

    if (response.statusCode == 200) {
      _isloading = false;
      try {
        _products = (SingleProductModel.fromJson(data));
      } catch (e, s) {
        print(e.toString());
        print(s.toString());
        _isloading = true;
        // return SingleProductModel.fromJson(data);
      }
    } else {
      _isloading = true;
      // return SingleProductModel.fromJson(data);
    }
    notifyListeners();
  }
}
