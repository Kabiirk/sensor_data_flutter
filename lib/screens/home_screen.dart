import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8.0),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            // App Bar
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      child: Icon(Icons.menu),
                  onTap: (){
                        print('Drawer !!');
                  },),
                  Container(
                    height: 50.0,
                      width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(image: AssetImage('assets/SNESDark.png'))
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 25.0,),
            // Card Section
            Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Morning !',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  ),
                  ),
                  Text('Kabiir !',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1.0,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16.0, right: 6),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                return Container(
                  width: 100.0,
                  height: 100.0,
                  margin: EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red[600],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}