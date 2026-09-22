

import 'package:flutter/material.dart';

class ShopItems {
  String name;
  String description;
  double price;
  String Imagepath;
  final IconData icon;
  double OldPrice;
  final ShopItemsCategory category;
  List<Addon> availAddons;

  ShopItems({
    required this.name,
    required this.Imagepath,
    required this.description,
    required this.price,
    required this.category,
    required this.OldPrice,
    required this.availAddons,
    required this.icon,
  });
}

enum ShopItemsCategory { All, Men, Women, Gadjets, Unisex }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
