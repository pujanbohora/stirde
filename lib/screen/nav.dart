import 'package:flutter/material.dart';

import 'homecontent.dart';
import 'homepage.dart';

class Nav extends StatefulWidget {
  final int index;
  final Function changePageIndex;
  Nav({required this.index, required this.changePageIndex});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
              onTap: () {
                widget.changePageIndex(0);
              },
              child: Icon(
                Icons.home,
                color: (widget.index == 0) ? Colors.black : Colors.grey,
              )),
          InkWell(
            onTap: () {
              widget.changePageIndex(1);
            },
            child: Icon(Icons.favorite,
                color: (widget.index == 1) ? Colors.black : Colors.grey),
          ),
          InkWell(
            onTap: () {
              widget.changePageIndex(2);
            },
            child: Icon(Icons.shopping_cart,
                color: (widget.index == 2) ? Colors.black : Colors.grey),
          ),
          InkWell(
            onTap: () {
              widget.changePageIndex(3);
            },
            child: Icon(Icons.airport_shuttle,
                color: (widget.index == 3) ? Colors.black : Colors.grey),
          ),
          // InkWell(onTap:(){
          //   widget.changePageIndex(4);
          // },
          //   child: Icon(Icons.home,
          //       color: (widget.index == 4) ? Colors.black : Colors.grey),
          // ),
          Container(
              width: 23,
              height: 23,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://picsum.photos/250?image=9'),
                ),
              )),
        ],
      ),
    );
  }

  void changePageIndex(int i) {}
}
