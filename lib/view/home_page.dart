import 'package:buttom_bar_menu/controller/controller_proivder.dart';
import 'package:buttom_bar_menu/view/back_ground.dart';
import 'package:buttom_bar_menu/view/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomSide(),
      child: Scaffold(
        body: BackGround(),
        bottomNavigationBar: BottomNavigationBars(),
      ),
    );
  }
}
