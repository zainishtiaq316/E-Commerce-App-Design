import 'dart:convert';

import 'package:ecommerceapp/Constant/api.dart';
import 'package:ecommerceapp/Model/categoryModels.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  bool _isloading = true;
  bool get isloading => _isloading;

  List<CategoryModel> _categories = [];

  List<CategoryModel> get categories => _categories;

  Future<void> getCategoryData() async {
    _isloading = true;
    final url = Uri.parse(category_url);

    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      var categoryData = jsonData;
      print(categoryData);
      categoryData
          .forEach((data) => _categories.add(CategoryModel.fromJson(data)));
      _isloading = false;
      notifyListeners();
    } else {
      _isloading = true;
      throw Exception('Failed to load Categories');
    }
  }
}
