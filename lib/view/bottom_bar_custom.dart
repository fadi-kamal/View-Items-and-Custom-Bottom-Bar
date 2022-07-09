import 'package:buttom_bar_menu/controller/controller_proivder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarCustom extends StatefulWidget {
  BottomBarCustom({required this.contaxt, Key? key}) : super(key: key);
  final contaxt;

  @override
  State<BottomBarCustom> createState() => _BottomBarCustomState();
}

class _BottomBarCustomState extends State<BottomBarCustom> {
  var dur = 250;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomSide()),
      ],
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Consumer<BottomSide>(
            builder: (context, container, child) {
              return AnimatedPositioned(
                  bottom: 10,
                  left: container.left,
                  child: AnimatedContainer(
                    curve: Curves.easeInExpo,
                    alignment: Alignment.center,
                    duration: Duration(milliseconds: dur),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)
                            )),
                    width: 80,
                    height: 80,
                  ),
                  duration: Duration(milliseconds: dur));
            },
          ),
          Consumer<BottomSide>(
            builder: (context, home, child) {
              return AnimatedPositioned(
                bottom: home.homeBottom,
                left: 33,
                curve: Curves.easeInExpo,
                duration: Duration(milliseconds: dur),
                child: AnimatedContainer(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: home.backColorHome,
                      boxShadow: [
                        BoxShadow(
                            color: home.shadowHome,
                            blurRadius: 4.5,
                            offset: Offset(1, -1)),
                        BoxShadow(
                            color: home.shadowHome,
                            blurRadius: 4.5,
                            offset: Offset(-1, 1)),
                      ]),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  duration: Duration(milliseconds: dur),
                  child: InkWell(
                      onTap: () => home.HomeIcon(),
                      child: Icon(
                        Icons.home_filled,
                        size: 35,
                      )),
                ),
              );
            },
          ),
          Consumer<BottomSide>(
            builder: (context, favorite, child) {
              return AnimatedPositioned(
                bottom: favorite.favoriteBottom,
                left: 108,
                curve: Curves.easeInExpo,
                duration: Duration(milliseconds: dur),
                child: AnimatedContainer(
                  curve: Curves.easeInExpo,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: favorite.backColorFav,
                      boxShadow: [
                        BoxShadow(
                            color: favorite.shadowFav,
                            blurRadius: 4.5,
                            offset: Offset(1, -1)),
                        BoxShadow(
                            color: favorite.shadowFav,
                            blurRadius: 4.5,
                            offset: Offset(-1, 1)),
                      ]),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  duration: Duration(milliseconds: dur),
                  child: InkWell(
                      onTap: () => favorite.FavoriteIcon(),
                      child: Icon(
                        Icons.favorite,
                        size: 35,
                      )),
                ),
              );
            },
          ),
          Consumer<BottomSide>(
            builder: (context, person, child) {
              return AnimatedPositioned(
                bottom: person.personBottom,
                left: 173,
                curve: Curves.easeInExpo,
                duration: Duration(milliseconds: dur),
                child: AnimatedContainer(
                  curve: Curves.easeInExpo,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: person.backColorPer,
                      boxShadow: [
                        BoxShadow(
                            color: person.shadowPer,
                              blurRadius: 4.5,
                        offset: Offset(1,-1) ),
                        BoxShadow(
                            color: person.shadowPer,
                             blurRadius: 4.5,
                        offset: Offset(-1 , 1) ),
                      ]),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  duration: Duration(milliseconds: dur),
                  child: InkWell(
                      onTap: () => person.PersonIcon(),
                      child: Icon(
                        Icons.person,
                        size: 35,
                      )),
                ),
              );
            },
          ),
          Consumer<BottomSide>(
            builder: (context, chat, child) {
              return AnimatedPositioned(
                bottom: chat.chatBottom,
                left: 248,
                curve: Curves.easeInExpo,
                duration: Duration(milliseconds: dur),
                child: AnimatedContainer(
                  curve: Curves.easeInExpo,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: chat.backColorChat,
                      boxShadow: [
                        BoxShadow(
                            color: chat.shadowChat,
                              blurRadius: 4.5,
                        offset: Offset(1,-1) ),
                        BoxShadow(
                            color: chat.shadowChat,
                            blurRadius: 4.5,
                            offset: Offset(-1, 1)),
                      ]),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  duration: Duration(milliseconds: dur),
                  child: InkWell(
                      onTap: () => chat.ChatIcon(),
                      child: Icon(
                        Icons.chat,
                        size: 35,
                      )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
