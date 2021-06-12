import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// custom widget imports
import 'package:sensordataflutter/widgets/pie_chart_widget.dart';
import 'package:sensordataflutter/widgets/line_chart_widget.dart';

//
import 'package:sensordataflutter/services/firebase_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  final String value;
  HomeScreen({Key? key , required this.value}) : super(key : key);

  @override
  _HomeScreenState createState() => _HomeScreenState(value);
}

class _HomeScreenState extends State<HomeScreen> {
  String value='';
  _HomeScreenState(this.value);
  //final String data = 'Kabiir';

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().chart,
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Hello !', style: TextStyle(color: Colors.white),),
                decoration: BoxDecoration(color: Colors.grey[800]),
              ),
              ListTile(
                title: Text('Log Out', style: TextStyle(color: Colors.grey[850]),),
                onTap: (){
                  Navigator.of(context).pushNamed('/login');
                  },
              )
            ],
          )
        ),
        body: Container(
          margin: EdgeInsets.only(top: 8.0),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              // App Bar
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        child: Icon(
                            Icons.menu,
                          color: Colors.white,
                        ),
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

              // Card + Title Section
              Padding(
                padding: EdgeInsets.only(left: 16.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Good Morning !',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                    ),
                    Text(value,
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 125.0,
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
                      color: Colors.grey[50],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                            Icons.android,
                          size: 30.0,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sensor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                  );
                }),
              ),

              SizedBox(
                height: 50.0,
              ),

              //Pie Chart
              Container(
                height: 200.0,
                width: 200.0,
                child: PieChartWidget(),
              ),

              //Line Chart
              Container(
                height: 300.0,
                width: 200.0,
                child: LineChartWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}