import 'package:flutter/material.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/MODELS/Shop.dart';
import 'package:smartshop/MODELS/shopitems.dart';
import 'package:smartshop/my_tab_bar.dart';
import 'package:smartshop/productpage.dart';
import 'package:smartshop/shoptiles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  // sort items that belongs them to their categories

  List<ShopItems> filterItemsbyCategories(
    ShopItemsCategory categories,
    List<ShopItems> fullmenu,
  ) {
    return fullmenu
        .where((Shopitems) => Shopitems.category == categories)
        .toList();
  }

  // return items to their categories

  List<Widget> getItemsInCategories(List<ShopItems> fullmenu) {
    return ShopItemsCategory.values.map((category) {
      List<ShopItems> categoryMenu = filterItemsbyCategories(
        category,
        fullmenu,
      );
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 1,
          childAspectRatio: 0.5,
        ),
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          final ShopItems = categoryMenu[index];
          return shoptiles(
            shopitems: ShopItems,
            OnTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(shopitems: ShopItems),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.only(left: 15, right: 15, top: 10),
        child: Column(
          children: [
            // Search Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // APP LOOGO
                Image.asset(
                  "lib/assets/Teyalogo-removebg-preview.png",
                  width: 70,
                  color: const Color.fromARGB(255, 93, 9, 3),
                ),

                //SEARCH BAR
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 120, 120, 120),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    LucideIcons.bell,
                    size: 15,
                    color: const Color.fromARGB(255, 101, 101, 101),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Ask your Ai assitant....",
                suffixIcon: Icon(
                  HugeIconsStroke.aiChat02,
                  color: const Color.fromARGB(255, 73, 76, 168),
                ),
                prefixIcon: Icon(
                  LucideIcons.search,
                  color: const Color.fromARGB(255, 207, 206, 206),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 203, 202, 202),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 196, 195, 195),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 220, 219, 219),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 20),

            MyTabBar(tabController: _tabController),

            Expanded(
              child: Consumer<Shop>(
                builder: (context, Shop, child) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TabBarView(
                    controller: _tabController,
                    children: getItemsInCategories(Shop.items),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
