import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';

import 'BottomCartSheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Color(0xFF475269),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.category_outlined, size: 32, color: Colors.white),
          InkWell(
            onTap: () {
              showSlidingBox(
                context: context,
                box: SlidingBox(
                  minHeight: 200,
                  maxHeight: 630,
                  body: Material(child: BottomCartSheet()),
                ),
              );
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              size: 32,
              color: Colors.white,
            ),
          ),
          Icon(Icons.favorite_border, size: 32, color: Colors.white),
          Icon(Icons.person, size: 32, color: Colors.white),
        ],
      ),
    );
  }
}
