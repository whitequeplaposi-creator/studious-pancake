import 'package:flutter/foundation.dart';
import 'api_service.dart';
import '../models/product.dart';

class ProductService extends ChangeNotifier {
  final ApiService _apiService;
  List<Product> _products = [];
  bool _isLoading = false;
  
  ProductService(this._apiService);
  
  List<Product> get products => _products;
  bool get isLoading => _isLoading;
  
  Future<List<Product>> fetchProducts() async {
    _isLoading = true;
    notifyListeners();
    
    try {
      final response = await _apiService.get('/products');
      if (response.statusCode == 200) {
        _products = (response.data as List)
            .map((json) => Product.fromJson(json))
            .toList();
      }
    } catch (e) {
      print('Fetch products error: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
    
    return _products;
  }
  
  Future<Product?> fetchProductById(String id) async {
    try {
      final response = await _apiService.get('/products/$id');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
    } catch (e) {
      print('Fetch product error: $e');
    }
    return null;
  }
  
  Future<List<Product>> searchProducts(String query) async {
    try {
      final response = await _apiService.post('/products/search', data: {
        'query': query,
      });
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((json) => Product.fromJson(json))
            .toList();
      }
    } catch (e) {
      print('Search products error: $e');
    }
    return [];
  }
}
