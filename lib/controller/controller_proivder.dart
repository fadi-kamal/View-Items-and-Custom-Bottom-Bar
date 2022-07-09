import 'package:buttom_bar_menu/constant.dart';
import 'package:flutter/material.dart';

class BottomSide extends ChangeNotifier {
  // ----Start Container---

  double left = 50;

  // ----End Container---

  // ----Start Home Icon---
  double homeBottom = 20;
  Color backColorHome = blu;
  Color shadowHome = Colors.grey.withOpacity(0.4);
  
  HomeIcon() {
    homeBottom = 20;
    shadowHome = Colors.grey.withOpacity(0.4);
    backColorHome = blu;
    left = 50;

    favoriteBottom = 0;
    personBottom = 0;
    chatBottom = 0;

    backColorChat = Colors.transparent;
    backColorFav = Colors.transparent;
    backColorPer = Colors.transparent;

    shadowFav = Colors.transparent;
    shadowChat = Colors.transparent;
    shadowPer = Colors.transparent;
    notifyListeners();
  }

  // ----End Home Icon---

  // ----Start Favorite Icon---
  // double favoriteLeft = 35;
  double favoriteBottom = 0;
  Color shadowFav = Colors.transparent;
  Color backColorFav = Colors.transparent;
  
  FavoriteIcon() {
    
    shadowFav = Colors.grey.withOpacity(0.4);
    favoriteBottom = 20;
    backColorFav = blu;
    left = 125;

    homeBottom = 0;
    personBottom = 0;
    chatBottom = 0;

    backColorChat = Colors.transparent;
    backColorHome = Colors.transparent;
    backColorPer = Colors.transparent;

    shadowHome = Colors.transparent;
    shadowChat = Colors.transparent;
    shadowPer = Colors.transparent;

    notifyListeners();
  }
  // ----End Favorite Icon---

  // ----Start Person Icon---
  double personBottom = 0;
  Color shadowPer = Colors.transparent;
  Color backColorPer = Colors.transparent;
  
  PersonIcon() {
   
    personBottom = 20;
    backColorPer = blu;
    shadowPer = Colors.grey.withOpacity(0.4);
    left = 190;
    
    homeBottom = 0;
    chatBottom = 0;
    favoriteBottom = 0;
   
    backColorChat = Colors.transparent;
    backColorHome = Colors.transparent;
    backColorFav = Colors.transparent;
   
    shadowFav = Colors.transparent;
    shadowHome = Colors.transparent;
    shadowChat = Colors.transparent;
    
    notifyListeners();
  }
  // ----End Person Icon---

  // ----Start Chat Icon---
  double chatBottom = 0;
  Color backColorChat = Colors.transparent;
  Color shadowChat = Colors.transparent;

  ChatIcon() {
    
    chatBottom = 20;
    left = 265;
    backColorChat = blu;
    shadowChat = Colors.grey.withOpacity(0.4);
   
    personBottom = 0;
    homeBottom = 0;
    favoriteBottom = 0;
   
    backColorPer = Colors.transparent;
    backColorHome = Colors.transparent;
    backColorFav = Colors.transparent;
   
    shadowFav = Colors.transparent;
    shadowHome = Colors.transparent;
    shadowPer = Colors.transparent;
   
    notifyListeners();
  }
  // ----End Chat Icon---

}
