import 'package:flutter/material.dart';
import 'package:smartshop/MODELS/shopitems.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

List<Tab> _buildCategoryTab(){
  return ShopItemsCategory.values.map((category){
    return Tab(text: category.toString().split('.').last);
  },).toList();
}


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TabBar(
        
        labelPadding: EdgeInsets.symmetric(horizontal: 10),
        dividerColor: Colors.transparent,
        controller: tabController,
        tabs: _buildCategoryTab()

        ),
    );
  }
}