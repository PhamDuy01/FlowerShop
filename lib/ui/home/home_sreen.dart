import 'package:flutter/material.dart';
import 'package:myshop/ui/home/components/body.dart';

import '../share/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      appBar: AppBar(
        //title: const Text('FlowerShop'),
        backgroundColor: Colors.pink.shade100,
      ),
      drawer: const AppDrawer(),
      body: BodyScreen(),
    );
  }
}
