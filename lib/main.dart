import 'package:flutter/material.dart';
import 'package:myshop/screens/cart.dart';
import 'screens/home.dart';
import 'screens/order.dart';
import 'screens/product.dart';
import 'screens/product_detail.dart';
import 'screens/signup.dart';
import 'screens/welcome.dart';
import 'widgets/product/product_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlowerShop',
      debugShowCheckedModeBanner: false, //
      theme: ThemeData(
        fontFamily: 'Lato',
        primaryColor: Colors.pink.shade100,
        scaffoldBackgroundColor: Colors.pink.shade50,
      ),
      //home: CartPage(),
      //home:   Orders(),
      //home:  const ProductsOverviewScreen(),
      home: CartScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        //CartPage.routeName: (ctx) => CartPage(),
        //Orders.routeName:(context) => Orders(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ProductDetailScreen.routeName) {
          final productId = settings.arguments as String;
          return MaterialPageRoute(
            builder: (ctx) {
              return ProductDetailScreen(
                ProductsManager().findById(productId)!,
              );
            },
          );
        }
        return null;
      },

    );
  }
}