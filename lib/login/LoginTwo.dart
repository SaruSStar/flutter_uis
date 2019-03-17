
import 'package:zoomable_image/zoomable_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class LoginTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginTwoState();
  }
}

class LoginTwoState extends State<LoginTwo> {

  //var image = Image(image: asseim,)
  final scaffoldkey = GlobalKey<ScaffoldState>();
  VoidCallback Bottomsheet;

  @override
  void initState() {
    Bottomsheet = viewBottmsheet;
    super.initState();
  }

  void viewBottmsheet() {
//    setState(() {
//      Bottomsheet = null;
//    });
    scaffoldkey.currentState
        .showBottomSheet((context) {
          return Container(
              color: Colors.black,
              height: 480,
              //width: 300,
              child: Container(
                  child: Scrollbar(
                //child: SingleChildScrollView(

                    child: Container(


                      child: ZoomableImage(
                           AssetImage(
                        "code/login2 full.jpg"
                      ),),
                    ),
              )));
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              Bottomsheet = viewBottmsheet;
            });
          }
        });
  }

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _welcomeString = "";

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     // key: scaffoldkey,
      appBar: new AppBar(
        title: new Text("Login 2"),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Code",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (Context){
              return CodeView("code/login2 full.jpg");
            }));}
          )
        ],
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.brown,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Icon(
              Icons.supervised_user_circle,
              size: 120,
              color: Colors.white,
            ),

            new Container(
              height: 230.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Your Name",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Username',
                        icon: new Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Yout Password",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),

                  new Padding(padding: new EdgeInsets.all(10.5)
                  ), //add padding
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        // Login button
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                              onPressed: _showWelcome,
                              color: Colors.redAccent,
                              child: new Text("Login",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9
                                )
                             )
                          ),
                        ),

                        new Container(
                          margin: const EdgeInsets.only(left: 80.0),
                          child: new RaisedButton(
                              onPressed: _erase,
                              color: Colors.redAccent,
                              child: new Text("Clear",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ), //form ends here

            new Padding(padding: const EdgeInsets.all(14.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Welcome, $_welcomeString",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcomeString = _userController.text;
      } else
        _welcomeString = "Nothing!";
    });
  }
}
