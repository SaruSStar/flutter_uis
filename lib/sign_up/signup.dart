import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class SignupOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home:   Scaffold(
        appBar: AppBar(title:
        Text("Sign Up 1"),centerTitle: true,actions: <Widget>[
          FlatButton(
            child: Text("Code",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context){
              return CodeView("code/signup1.jpg");
            }));},
          )
        ],),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30.0,),
              _buildLoginForm(),
            ],
          ),
        )
      )
    );
  }
  }
  Container _buildLoginForm() {
    return Container(
          padding: EdgeInsets.all(20.0),
          child: Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  height: 360,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 50.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email address",
                            border: InputBorder.none,
                            icon: Icon(Icons.email)
                          ),
                        )
                      ),
                      Container(child: Divider(color: Colors.white,),
                        padding: EdgeInsets.only(
                            left: 20.0,right: 20.0, bottom: 10.0
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                            icon: Icon(Icons.lock)
                          ),
                        )
                      ),
                      Container(child: Divider(color: Colors.white),
                        padding: EdgeInsets.only(
                            left: 20.0,right: 20.0, bottom: 10.0
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm password",
                            border: InputBorder.none,
                            icon: Icon(Icons.lock_outline)
                          ),
                        )
                      ),
                      Container(child: Divider(
                        color: Colors.white,
                      ),
                        padding: EdgeInsets.only(
                            left: 20.0,right: 20.0, bottom: 10.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
              Container(
                height: 360,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(40.0)
                    ),
                    child: Text("Sign Up", style: TextStyle(
                       )),
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        );
  }


