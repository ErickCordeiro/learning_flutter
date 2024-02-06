import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/http/exceptions.dart';
import 'package:flutter_application_1/app/data/models/product_model.dart';
import 'package:flutter_application_1/app/data/repositories/product_repository.dart';

class ProductsStore {
  final IProductRepository repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
  
  final ValueNotifier<List<ProductModel>> state =
      ValueNotifier<List<ProductModel>>([]);

  final ValueNotifier<String> error = ValueNotifier<String>('');

  ProductsStore({required this.repository});

  Future getProducts() async {
    isLoading.value = true;

    try {
      final result = await repository.getProducts();
      state.value = result;
    } on NotFoundException catch (e) {
      error.value = e.message;
    } catch (e) {
      error.value = e.toString();
    }

    isLoading.value = false;
  }
}
