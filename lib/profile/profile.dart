import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class ProfileOnePage extends StatelessWidget {

  TextStyle titile= TextStyle(color: Colors.blue.shade900, fontSize: 20.0);
  TextStyle sub = TextStyle(fontSize: 18.0,color: Colors.blue.shade400,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile 1",style: TextStyle(
            fontStyle: FontStyle.italic,fontSize: 25,
            fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
        elevation: 4,
        actions: <Widget>[
          FlatButton(
              child: Text(
                "Code",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return CodeView("code/profile1.jpg");
                  }));}
          )
        ],
      ),
      body: ListView(
        children: <Widget>[ Container( height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5, 0.9],
                    colors: [Colors.green.shade400,
                      Colors.green,]
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar( child: Icon(Icons.call,
                      size: 30.0,color: Colors.blue.shade900,),
                      minRadius: 30.0,
                      backgroundColor: Colors.green.shade800,),
                    CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Colors.green.shade300,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/1.jpg'),
                        minRadius: 50, ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.message, size: 30.0,
                     color: Colors.blue.shade900,), minRadius: 30.0,
                     backgroundColor: Colors.green.shade800,),
                  ],
                ),
                SizedBox(height: 10,),
                Text("User Profile Name", style: TextStyle(
                  fontSize: 22.0,color: Colors.blue.shade900,),
                ),
                Text("Mp Indore", style: TextStyle(
                  fontSize: 14.0,color: Colors.blue.shade900,),
                )],),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded( child: Container(
                    color: Colors.green.shade300,
                    child: ListTile( title: Text("895",textAlign:
                    TextAlign.center, style: TextStyle(
                          color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold, fontSize: 24.0
                      ),),
                      subtitle: Text("FOLLOWERS", textAlign:
                      TextAlign.center, style: TextStyle(color:
                      Colors.blue.shade900,),),
                    ),),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green, child: ListTile(
                      title: Text("524",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold, fontSize: 24.0
                      ),),
                      subtitle: Text("FOLLOWING", textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue.shade900,),
                      ),),),
                ),],
            ),
          ),
          ListTile(
            title: Text("Email", style: titile),
            subtitle: Text("parvaj@mohmod.com", style: sub),),
          Divider(),
          ListTile(
            title: Text("Phone", style: titile),
            subtitle: Text("+91 9818225533", style: sub),),
          Divider(),
          ListTile(
            title: Text("Twitter", style: titile),
            subtitle: Text("@parvaj", style: sub),),
          Divider(),
          ListTile(
            title: Text("Facebook", style: titile),
            subtitle: Text("facebook.com/parvaj", style: sub,),),
          Divider(),
        ],),);
  }
}

