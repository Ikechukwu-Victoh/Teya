import 'package:flutter/material.dart';
import 'package:hugeicons_pro/hugeicons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smartshop/MODELS/shopitems.dart';

class shoptiles extends StatelessWidget {
  ShopItems shopitems;
  void Function() OnTap;
  shoptiles({super.key, required this.shopitems, required this.OnTap});

  String CurrencySign = "\$";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 10,
          padding: EdgeInsets.only(top: 10, left: 5, right: 5),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              // PRODUCT IMAGE
              Image.asset(shopitems.Imagepath, height: 200),

              // PRODUCT NAME
              Text(
                shopitems.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              // PRODUCT DESCRIPTION
              Text(
                shopitems.description,
                style: TextStyle(fontSize: 13),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
Row(children: [
  Icon(HugeIconsSolid.fire, size: 15,color: const Color.fromARGB(255, 178, 108, 2),),
  Text('10k+ Sold'),
  Spacer(),
  Text("20 Reviews", style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 84, 84, 84)),)
],),
              // PRODUCT PRICE AND ADD TO CART
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        CurrencySign + shopitems.price.toString(),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 171, 13, 2),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Text(
                        shopitems.OldPrice.toString(),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 104, 104, 104),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(shopitems.icon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
