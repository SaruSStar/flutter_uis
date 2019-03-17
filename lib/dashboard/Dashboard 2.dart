import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class DashboardTwo extends StatefulWidget {
  @override
  _DashboardTwoState createState() => _DashboardTwoState();
}

class _DashboardTwoState extends State<DashboardTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 20, 20, 2.0),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Code",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: (){Navigator.push(context,
               MaterialPageRoute(builder: (context){
               return CodeView("code/dashboard2.jpg");
              }));},
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.voice_chat)),
              Tab(icon: Icon(Icons.chat)),
            ],
          ),
          title: Text('Dashboard 2'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(7000, 3, 3, 2),
                  ),
                  title:
                      Text("Tab Ui", style: Theme.of(context).textTheme.title),
                  trailing: Icon(Icons.check),
                  subtitle: Text(
                    "send your msg",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(2000, 3000, 3, 2),
                  ),
                  title:
                      Text("Tab Ui", style: Theme.of(context).textTheme.title),
                  trailing: Icon(Icons.check),
                  subtitle: Text(
                    "send your msg",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(5000, 3000, 3, 2),
                  ),
                  title:
                      Text("Tab Ui", style: Theme.of(context).textTheme.title),
                  trailing: Icon(Icons.check),
                  subtitle: Text(
                    "send your msg",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(8000, 3000, 3000, 2),
                  ),
                  title:
                      Text("Tab Ui", style: Theme.of(context).textTheme.title),
                  trailing: Icon(Icons.check),
                  subtitle: Text(
                    "send your msg",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
              ],
            ),
            Column(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.chat_bubble),
                  title: TextField(
                    maxLength: 200,
                    textInputAction: TextInputAction.newline,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


