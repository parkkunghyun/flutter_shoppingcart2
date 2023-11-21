

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart2/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart2/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart2/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: _buildShoppingcart(),
    );
  }
}

class _buildShoppingcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingAppBar(),
      body: Column(
        children: [
          ShoppingcartHeader(),
          ShoppingcartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () { log("leading"); },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(onPressed: () {log("action");},
            icon: const Icon(Icons.shopping_cart)),
        const SizedBox(width: 16.0,),
      ],
    );
  }
}
