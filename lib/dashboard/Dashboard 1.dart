import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class DashboardOne extends StatefulWidget {
  @override
  _DashboardOneState createState() => _DashboardOneState();}

class _DashboardOneState extends State<DashboardOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 6,backgroundColor: Colors.green.shade900,
        title: Text(" Dashboard 1"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Code",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            onPressed: (){Navigator.push(context,
              MaterialPageRoute(builder: (context){
              return CodeView("code/dashboard1.jpg");
            }));}
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Dashboard", Icons.dashboard),
            makeDashboardItem("Dashboard", Icons.dashboard),
            makeDashboardItem("Dashboard", Icons.dashboard),
            makeDashboardItem("Dashboard", Icons.dashboard),
            makeDashboardItem("Dashboard", Icons.dashboard),
            makeDashboardItem("Dashboard", Icons.dashboard)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 6.0,color: Colors.green,
        margin: new EdgeInsets.all(8.0),
        child: Container(
         // decoration: BoxDecoration(color: Color.fromRGBO(200, 200, 200, 1.0)),
          child: new InkWell(splashColor: Colors.amber.shade900,
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                style: new TextStyle(fontSize: 18.0,
                    color: Colors.black)
                  ),
                )
              ],
            ),
          ),
        ));}
}




