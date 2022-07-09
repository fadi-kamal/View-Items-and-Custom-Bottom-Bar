import 'package:buttom_bar_menu/components/product_item.dart';
import 'package:buttom_bar_menu/controller/items.dart';
import 'package:flutter/material.dart';


class BackGround extends StatefulWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(
                "assets/background/background.png")),
          // color: Colors.white,
          ),
      child: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProductItems(title: "Cats & Dogs", item: animal,),
                ProductItems(title: "Car", item: car,),
                ProductItems(title: "Phone", item: phone,),
                ProductItems(title: "Place", item: place,),
                ],
            )
          ),
        ),
      ),
    );
  }
}

