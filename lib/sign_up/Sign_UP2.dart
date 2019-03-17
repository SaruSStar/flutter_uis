import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class SignUP2 extends StatefulWidget {
  @override
  _SignUP2State createState() => _SignUP2State();
}

class _SignUP2State extends State<SignUP2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          title: Text("Sign Up 2",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true, backgroundColor: Colors.white,
          actions: <Widget>[
            FlatButton(child: Text("Code",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return CodeView("code/signup2.jpg");
                  }));},
            )],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration( color: Colors.redAccent,
          ),
          child: new Form( child: ListView(
            children: <Widget>[ Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Center( child: Icon( Icons.lock,
                    color: Colors.white,
                    size: 40.0,),),
            ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Sign Up in Flutter",
                      style: TextStyle( color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),],),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                child: FlatButton(
                      shape:  RoundedRectangleBorder(
                          borderRadius:  BorderRadius.circular(30.0)
                      ),
                      color: Colors.white,
                      onPressed: () {},child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3.0,
                        ),
                        child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Your Real Name",
                                    labelStyle: TextStyle(fontSize: 20),
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                    )
                                ),),
                      ),
                    )),
              new Container(
                margin: const EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)
                      ),
                      color: Colors.white,
                      onPressed: () {}, child: new Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3.0,
                        ),
                        child:  TextFormField(
                                decoration: InputDecoration(
                                    // hintText: "e.g Parvaz",
                                    labelText: "Email Address",
                                    labelStyle: TextStyle(fontSize: 22),
                                    errorStyle: TextStyle(fontSize: 10.0),
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                    )
                                ),),
                      ),)),
            Container(
                margin: const EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                child:  FlatButton(
                      shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)
                      ),
                      color: Colors.white, onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                        vertical: 3.0,),
                        child: TextFormField(decoration:
                        InputDecoration(labelText: "Password", labelStyle:
                           TextStyle(fontSize: 22), errorStyle:
                           TextStyle(fontSize: 10.0), border:
                           OutlineInputBorder(borderRadius:
                           BorderRadius.circular(10)
                                    )),
                        ),),)
            ),
               Container(
                margin:EdgeInsets.only(left: 60.0, right: 60.0, top: 20.0),
                alignment: Alignment.center,
                child:  FlatButton(
                        shape: RoundedRectangleBorder( borderRadius:
                        BorderRadius.circular(30.0)),
                        color: Colors.white, onPressed: () {}, child:
                 Container(padding:  EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0,
                 ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[Expanded( child: Text(
                              "Sign Up", textAlign: TextAlign.center,
                                  style: TextStyle( color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                                ),),
                            ],),),),
              ),],)),)
    );
  }
}




