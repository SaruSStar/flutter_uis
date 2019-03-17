import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class LoginOne extends StatefulWidget {
  @override
  _LoginOneState createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
      appBar: AppBar(title: Text("Login 1"),centerTitle: true,
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Code",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                return CodeView("code/login1.jpg");
              }));},
            )
          ],
          backgroundColor: Colors.lightBlue),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(height: 40.0,),
                      Text("   Login to flutter", style: TextStyle(
                        fontSize: 33.0,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 30.0,),
                      TextField(
                        decoration: InputDecoration(hintText: "Username",
                          enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white54)
                          )
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white54)
                          )
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(color: Colors.lightBlue,
                          child: Text("Login".toUpperCase()),
                          onPressed: (){},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text("Forgot your flutter password",style: TextStyle(
                            fontSize: 20.0,
                          ),),
                          SizedBox(width: 10.0,),
                        ],
                      ),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


