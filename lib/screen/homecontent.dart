import 'package:flutter/material.dart';

import 'homebestpick.dart';
import 'homerecommendation.dart';
import 'nav.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 220,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=9'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          SizedBox(height: 23),
          Row(
            children: [
              Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                "Recommended",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
                  ))
            ],
          ),
          SizedBox(height: 15),
          HomeRecommendation(),
          SizedBox(height: 15),
          Row(
            children: [
              Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                "Best Picks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
                  ))
            ],
          ),
          SizedBox(height: 15),
          HomeBestPick(),
          
          
        ],
      ),
    );
   
  }
}
