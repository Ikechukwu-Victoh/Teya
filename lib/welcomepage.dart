import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smartshop/Homepage.dart';
import 'package:smartshop/profile.dart';
import 'package:smartshop/storepage.dart';
import 'package:smartshop/wishlist.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
final List _pages = [
  MyHomePage(),
  storepage(),
  wishlist(),
  profilepage(),
];

 int _selectedIndex = 0;

 void NavigateBottomBar(int index){
setState(() {
  _selectedIndex = index;
});
 }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: _pages[_selectedIndex],
bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  currentIndex: _selectedIndex,
  onTap: NavigateBottomBar,
  selectedItemColor: const Color.fromARGB(255, 106, 9, 2),
  unselectedItemColor: Colors.black,
  items: 
[

  BottomNavigationBarItem(icon: Icon(LucideIcons.home), label: "Home"),
  BottomNavigationBarItem(icon: Icon(LucideIcons.shoppingBag), label: "store"),
  BottomNavigationBarItem(icon: Icon(LucideIcons.heart), label: "Wishlist"),
  BottomNavigationBarItem(icon: Icon(LucideIcons.user2), label: "You"),
]),
   );
  }
}