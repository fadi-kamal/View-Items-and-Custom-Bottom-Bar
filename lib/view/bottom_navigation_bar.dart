import 'package:buttom_bar_menu/constant.dart';
import 'package:buttom_bar_menu/view/bottom_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBars extends StatelessWidget {
  const BottomNavigationBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: blu,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
           topRight: Radius.circular(25)),
      ),
      child: Container(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Consumer(
                builder: (context, bar, child) => BottomBarCustom(contaxt: bar)),
          ],
        ),
      ),
    );
  }
}