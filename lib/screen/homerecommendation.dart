import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeRecommendation extends StatefulWidget {
  const HomeRecommendation({Key? key}) : super(key: key);

  @override
  _HomeRecommendationState createState() => _HomeRecommendationState();
}

class _HomeRecommendationState extends State<HomeRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Text('Recommended'),
        Container(
          height: 190,
          // margin: EdgeInsets.symmetric(horizontal: 15),

          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      // height: 150,
                      width: 150,
                      // color: Colors.grey,
                      // margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Stack(
                          children: [
                            Image.network('https://picsum.photos/250?image=9'),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(125, 8, 0, 0),
                              child: Icon(Icons.favorite, size: 16),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AIR JORDAN 1',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text("\$99.99",
                                  style: TextStyle(fontSize: 13)),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                );
              }),
        ),
        
        
      ],
    );
  }
}
