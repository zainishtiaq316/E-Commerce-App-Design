import 'dart:convert';

import 'package:ecommerceapp/Model/productVariation.dart';
import 'package:ecommerceapp/config/config.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class singleProductVariationProvider extends ChangeNotifier {
  bool _isloading = true;
  bool get isloading => _isloading;

  SingleProductVariations? productVariation;

  SingleProductVariations? get productVar => productVariation;

  Future<void> getSingleProductVariation(productID) async {
    _isloading = true;
    print("productVariation" + productID);
    String url =
        '${Config.url}products/$productID/variations?consumer_key=${Config.key}&consumer_secret=${Config.secret}&per_page=50';
    print(url);
    final Url = Uri.parse(url);
    final response = await http.get(Url);

    final data = jsonDecode(response.body);

    //print(response.toString());
    print(data.toString());
    if (response.statusCode == 200) {
      _isloading = false;
      try {
        productVariation = (SingleProductVariations.fromJson(data));
      } catch (e, s) {
        print(e.toString());
        print(s.toString());
        _isloading = true;
      }
    } else {
      _isloading = true;
      throw Exception("Failed to load products");
    }
    notifyListeners();
  }
}
