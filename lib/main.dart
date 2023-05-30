import 'package:flutter/material.dart';
import 'package:myshop/ui/home/home_sreen.dart';
import 'constants.dart';
import 'ui/product/product_detail.dart';
import 'ui/product/product_screen.dart';
import 'ui/product/products_manager.dart';
import 'ui/login/welcome_sreen.dart';

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
      home:   WelcomeScreen(),
      //home:  const ProductsOverviewScreen(),
      // routes: {
      //   HomeScreen.routeName: (ctx) => HomeScreen(),
      // },
      // onGenerateRoute: (settings) {
      //   if (settings.name == ProductDetailScreen.routeName) {
      //     final productId = settings.arguments as String;
      //     return MaterialPageRoute(
      //       builder: (ctx) {
      //         return ProductDetailScreen(
      //           ProductsManager().findById(productId)!,
      //         );
      //       },
      //     );
      //   }
      //   return null;
      // },

    );
  }
}
