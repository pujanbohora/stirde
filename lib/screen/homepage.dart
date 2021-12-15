import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homecontent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        
        appBar: AppBar(    
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black, size: 23),
              onPressed: () {
                // handle the press
              },
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 13,
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
            )
          ],
          title: const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'STIRDE',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 18,
              ),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,

          bottom: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Nike',
              ),
              Tab(
                text: 'Adidas',
              ),
              Tab(text: 'Converse'),
              Tab(text: 'Puma'),
              Tab(
                text: 'Reebok',
              ),
              Tab(text: 'Converse'),
              Tab(text: 'Puma'),
              Tab(
                text: 'Reebok',
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            
            children: [
              
              HomeContent(),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
            ],
          ),
        ),
      ),
    );
  }
}
