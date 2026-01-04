import 'package:flutter/foundation.dart';
import 'api_service.dart';
import '../models/cart.dart';

class CartService extends ChangeNotifier {
  final ApiService _apiService;
  Cart? _cart;
  bool _isLoading = false;
  
  CartService(this._apiService);
  
  Cart? get cart => _cart;
  bool get isLoading => _isLoading;
  int get itemCount => _cart?.items.length ?? 0;
  
  Future<void> fetchCart() async {
    _isLoading = true;
    notifyListeners();
    
    try {
      final response = await _apiService.get('/cart');
      if (response.statusCode == 200) {
        _cart = Cart.fromJson(response.data);
      }
    } catch (e) {
      print('Fetch cart error: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  
  Future<bool> addToCart(String productId, int quantity) async {
    try {
      final response = await _apiService.post('/cart/items', data: {
        'productId': productId,
        'quantity': quantity,
      });
      
      if (response.statusCode == 200) {
        _cart = Cart.fromJson(response.data);
        notifyListeners();
        return true;
      }
    } catch (e) {
      print('Add to cart error: $e');
    }
    return false;
  }
  
  Future<bool> updateQuantity(String itemId, int quantity) async {
    try {
      final response = await _apiService.put('/cart/items/$itemId', data: {
        'quantity': quantity,
      });
      
      if (response.statusCode == 200) {
        _cart = Cart.fromJson(response.data);
        notifyListeners();
        return true;
      }
    } catch (e) {
      print('Update quantity error: $e');
    }
    return false;
  }
  
  Future<bool> removeFromCart(String itemId) async {
    try {
      final response = await _apiService.delete('/cart/items/$itemId');
      if (response.statusCode == 200) {
        _cart = Cart.fromJson(response.data);
        notifyListeners();
        return true;
      }
    } catch (e) {
      print('Remove from cart error: $e');
    }
    return false;
  }
  
  Future<bool> applyCoupon(String code) async {
    try {
      final response = await _apiService.post('/cart/coupon', data: {
        'code': code,
      });
      
      if (response.statusCode == 200) {
        _cart = Cart.fromJson(response.data);
        notifyListeners();
        return true;
      }
    } catch (e) {
      print('Apply coupon error: $e');
    }
    return false;
  }
}
