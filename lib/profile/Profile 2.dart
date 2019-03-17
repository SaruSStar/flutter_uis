import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';

class ProfileTwo extends StatefulWidget {
  @override
  _ProfileTwoState createState() => _ProfileTwoState();
}
class _ProfileTwoState extends State<ProfileTwo> {
  TextStyle title = TextStyle(fontSize: 20,color: Colors.black);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Profile 2",style:
      TextStyle(fontStyle: FontStyle.italic,fontSize: 25,
          fontWeight: FontWeight.w600),),centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          FlatButton( child: Text( "Code",
              style: TextStyle(fontSize: 25, color: Colors.white),),
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CodeView("code/profile2.jpg");}));
            },
          )
        ],),
      body: Stack( children: <Widget>[
          Container( height: 130.0,  decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade300, Colors.indigo.shade500]
              ),),
          ),
           Container( margin: EdgeInsets.only(top:198),
            height: 110.0, child: Row(children: <Widget>[
              SizedBox(width: 30,),
              Container(margin: EdgeInsets.only(top: 45),
                  child: Column(
                      children: <Widget>[ Icon(Icons.people,
                        size: 30,color: Colors.black,),
                      Text("Friends",style: title),
                      ])
              ),
              SizedBox(width: 7,),
              Container(margin: EdgeInsets.only(top: 45),
                  child: Column(
                      children: <Widget>[ Icon(Icons.format_bold,
                        size: 30,color: Colors.black,),
                      Text("Blogs",style: title),
                      ])
              ),
              SizedBox(width: 7,),
              Container(margin: EdgeInsets.only(top: 45),
                  child: Column(
                      children: <Widget>[ Icon(Icons.multiline_chart,
                        size: 30,color: Colors.black,),
                      Text("Articles",style: title),
                      ]
                  )
              ),
              SizedBox(width: 7,),
              Container(margin: EdgeInsets.only(top: 45),
                  child: Column(
                      children: <Widget>[ Icon(Icons.chat_bubble_outline,
                        size: 30,color: Colors.black,),
                      Text("Chats",style: title),
                      ]
                  )
              ),

            ]
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade300, Colors.indigo.shade500]
              ),
            ),
          ),

      Container(height: 170,color: Colors.white,
        margin: EdgeInsets.only(top: 320),
      child: Column( children: <Widget>[Text("Post                           "
          "                   ",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
        ListTile(leading: CircleAvatar(backgroundColor: Colors.purpleAccent,),
          title: Text("Same post posted by someone"),
        subtitle: Text("2 mins ago"),),
        ListTile(leading: CircleAvatar(backgroundColor: Colors.purpleAccent,),
          title: Text("i don't no who post this"),
          subtitle: Text("right now"),)
        ],
      ),),

      Container(
        margin: EdgeInsets.only(top: 10.0), height: 240.0,
        child: Stack(children: <Widget>[
            Container( padding: EdgeInsets.only(top: 40.0,
                left: 40.0, right: 40.0, bottom: 10.0),
              child: Material( shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
              ),
                elevation: 5.0, color: Colors.white,
                child: Column( children: <Widget>[
                    SizedBox(height: 50.0,),
                    Text("Aksah Sharma",
                      style: Theme.of(context).textTheme.title,),
                    SizedBox(height: 5.0,),
                    Text("Software Developer"),
                    SizedBox(height: 16.0,), Container( height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[ Expanded(
                            child: ListTile( title: Text("80",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("Posts".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12.0) ),
                            ),
                        ),
                          Expanded(
                            child: ListTile( title: Text("1K",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              subtitle: Text("Followers".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12.0) ),
                            ),),
                          Expanded(
                            child: ListTile( title: Text("40",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                              subtitle: Text("Following".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12.0) ),
                            ),),],
                      ),)],),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ Material( elevation: 5.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(child: Icon(Icons.verified_user),
                    radius: 40.0,
                  ),),],
            ),],),),],
      ),);
  }
}

