import 'package:buttom_bar_menu/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductItems extends StatelessWidget {
   ProductItems({
    required this.title,
    required this.item,
    Key? key,
  }) : super(key: key);

  final String title;
  final List item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 2),
          child: Text(
            title,
            style: TextStyle(fontSize: 45),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10 , right: 10  , bottom: 50 ),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 4.5, offset: Offset(-1, 0)),
                BoxShadow(
                    color: Colors.grey, blurRadius: 4.5, offset: Offset(1, 0)),
              ]),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: item.length,
            itemBuilder: (context, i) {
              return Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Card(
                    elevation: 4,
                    color: i.isEven ? pin : yel,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SvgPicture.asset("${item[i]}")),
              );
            },
          ),
        )
      ],
    );
  }
}
