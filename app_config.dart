import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../services/api_service.dart';
import '../../services/auth_service.dart';
import '../../services/cart_service.dart';
import '../../services/product_service.dart';

class AppConfig {
  static const String apiBaseUrl = 'http://localhost:3000/api';
  static const String appName = 'E-Handel';
  static const String appVersion = '1.0.0';
  
  static Future<void> initialize() async {
    // Initialize any required services here
    await Future.delayed(const Duration(milliseconds: 100));
  }
  
  static List<SingleChildWidget> get providers => [
    Provider<ApiService>(
      create: (_) => ApiService(baseUrl: apiBaseUrl),
    ),
    ChangeNotifierProxyProvider<ApiService, AuthService>(
      create: (context) => AuthService(
        Provider.of<ApiService>(context, listen: false),
      ),
      update: (_, apiService, authService) =>
          authService ?? AuthService(apiService),
    ),
    ChangeNotifierProxyProvider<ApiService, ProductService>(
      create: (context) => ProductService(
        Provider.of<ApiService>(context, listen: false),
      ),
      update: (_, apiService, productService) =>
          productService ?? ProductService(apiService),
    ),
    ChangeNotifierProxyProvider<ApiService, CartService>(
      create: (context) => CartService(
        Provider.of<ApiService>(context, listen: false),
      ),
      update: (_, apiService, cartService) =>
          cartService ?? CartService(apiService),
    ),
  ];
}
