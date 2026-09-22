import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smartshop/MODELS/shopitems.dart';

class Shop extends ChangeNotifier {
  
  // list of shopitems items
 
 final List<ShopItems> _items = [
ShopItems(name: "Henley shirt",
 Imagepath:"lib/assets/Men's Long-Sleeve Classic Waffle Henley _ Men's Tops _ Abercrombie_com.jpg" , 
description: "Quality Henly shirt for men, comes in defferent sizes",
 price: 50,
 OldPrice: 80,
 category: ShopItemsCategory.Men,
  icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

 ShopItems(name: "Olevs Men watch",
 Imagepath:"lib/assets/Luxury Men’s Black Chronograph Watch – Elegant Green Dial Stainless Steel Wristwatch (1).jpg" , 
description: "lib/assets/Olevs Men's Stainless Steel Watch Blue Dial Day-date Display.jpg",
 price: 15,
 OldPrice: 21,
 category: ShopItemsCategory.Men,
  icon: LucideIcons.shoppingCart,
 availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

 ShopItems(name: "Laptop Backpack",
 Imagepath:"lib/assets/Travel Laptop Backpack, Lightweight….jpg" , 
description: "Best Laptop backpack for your daily activities",
 price: 17,
  OldPrice: 20,
 category: ShopItemsCategory.Men,
   icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),
 
  ShopItems(name: "Nike Sneakers",
 Imagepath: "lib/assets/Nike Dunk Low SB.jpg", 
description: "Quality Henly Nick sneakers for men, comes in defferent Colors",
 price: 18,
  OldPrice: 25,
 category: ShopItemsCategory.Men,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

 ShopItems(name: "Men Longsleeves",
 Imagepath: "lib/assets/Pull en tricot à col rond pour hommes, pulls patchwork chauds, pulls décontractés à carreaux, mode.jpg", 
description: "Men's faux two pieces long sleeve",
 price: 30,
  OldPrice: 47,
 category: ShopItemsCategory.Men,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

ShopItems(name: "Men Longsleeves",
 Imagepath: "lib/assets/Thermal-Knit Long-Sleeve Henley T-Shirt _ Old Navy.jpg", 
description: "Men's faux two pieces long sleeve",
 price: 32,
 OldPrice: 41,
 category: ShopItemsCategory.Men,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

 ShopItems(name: "women Hangbag",
 Imagepath: "lib/assets/ladies bags.jpg", 
description: "Quality handbag for women ",
 price: 10,
  OldPrice: 16,

 category: ShopItemsCategory.Women,
   icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

  ShopItems(name: "women Night wears",
 Imagepath: "lib/assets/women nigth wears.JPG", 
description: "Quality handbag for women ",
 OldPrice: 21,
 price: 10,
 category: ShopItemsCategory.Women,
    icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

  ShopItems(name: "Women Watch",
 Imagepath: "lib/assets/women watch set gold color.JPG", 
description: "Quality handbag for women ",
 OldPrice: 21,
 price: 10,
 category: ShopItemsCategory.Women,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

  ShopItems(name: "women Slippers",
 Imagepath: "lib/assets/women white slippers.JPG", 
description: "Quality handbag for women ",
 OldPrice: 10,
 price:5 ,
 category: ShopItemsCategory.Women,
   icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

  ShopItems(name: "Women Sneakers",
 Imagepath: "lib/assets/women sneakers.JPG", 
description: "Quality handbag for women ",
 OldPrice: 20,
 price: 10,
 category: ShopItemsCategory.Women,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

  ShopItems(name: "women tee shirt",
 Imagepath: "lib/assets/IMG_3891.JPG", 
description: "Quality handbag for women ",
 OldPrice: 21,
 price: 10,
 category: ShopItemsCategory.Women,
 icon: LucideIcons.shoppingCart,
  availAddons: [
Addon(name: "Black ", price: 500000)
 ]
 ),

 ];

 //GETTER

 List<ShopItems> get items => _items;

 // OPERATIONS

 // Add to cart

 // Remove from cart 

 // Get total price of cart

 // clear cart

 }