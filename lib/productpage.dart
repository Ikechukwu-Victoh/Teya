import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:smartshop/MODELS/shopitems.dart';

class ProductPage extends StatefulWidget {
  ShopItems shopitems;
  ProductPage({super.key, required this.shopitems});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(10, 50),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add to Cart", style: TextStyle(fontSize: 18, color: Colors.white),),
        SizedBox(width: 20,),
              Icon(LucideIcons.shoppingCart, color: Colors.white,)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  widget.shopitems.Imagepath,
                  fit: BoxFit.cover,
                ),
              ),

              Text(
                widget.shopitems.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(widget.shopitems.description),
            ],
          ),
        ),
      ),
    );
  }
}
