import 'package:flutter/material.dart';
import './login/LoginOne.dart';
import './login/LoginTwo.dart';
import './sign_up/signup.dart';
import './ecommerce/Ecommerce.dart';
import './profile/profile.dart';
import 'package:flutter_uis/navigation/Navigation.dart';
import './dashboard/Dashboard 1.dart';
import './dashboard/Dashboard 2.dart';
import './profile/Profile 2.dart';
import './sign_up/Sign_UP2.dart';
import './Setting.dart';


void main() {
  runApp(MaterialApp(
    home: Menus(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,



    ),
  ));
}





class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {




  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 40) / 3;
    final double itemWidth = size.width / 2;

    TextStyle textStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Text("flutter Uis",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500, color: Colors.black),),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
         padding: EdgeInsets.only(top: 40,right: 15,left: 15),
          childAspectRatio: (itemWidth / itemHeight),

         // mainAxisSpacing: 1,
          children: <Widget>[


             //Dashboard 1 or 2
             Container(
             // margin: EdgeInsets.only(top: 40),
              child:  ListTile(title: Icon(Icons.dashboard, size: 70,
                color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 6),
                    child: Text("Dashboard 1",style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DashboardOne();
                }));},
              ),
            ),

            Container(//margin: EdgeInsets.only(top: 40),
              child:  ListTile(title: Icon(Icons.dashboard,size: 70,color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 6),child: Text("Dashboard 2"
                ,style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DashboardTwo();
                }));},
              ),
            ),


            // Login 1
           Container(//margin: EdgeInsets.only(bottom: 40),
            child:  ListTile(title: Icon(Icons.lock_outline,size: 70,color: Theme.of(context).primaryColor,),
            subtitle: Padding(padding: EdgeInsets.only(left: 30),child: Text("Login 1",
              style: textStyle,)),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginOne();
              }));},
            ),
            ),

             //Login 2
           Container(//margin: EdgeInsets.only(bottom: 80),
              child:  ListTile(title: Icon(Icons.lock_outline,size: 70,color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 30),child: Text("Login 2",
                  style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginTwo();
                }));},
              ),
            ),



            // Sign up View
            Container(// margin: EdgeInsets.only(bottom :45),
                child:  ListTile(title: Icon(Icons.assignment_ind,size: 70,color: Theme.of(context).primaryColor,),
                  subtitle: Padding(padding: EdgeInsets.only(left: 23),child: Text("Sign Up 1",
                    style: textStyle,)),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignupOne();
                  }));},
                ),
              ),

            Container(//margin: EdgeInsets.only(bottom :45),
              child:  ListTile(title: Icon(Icons.assignment_ind,size: 70,color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 23),child: Text("Sign Up 2", style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUP2();
                 // return SignUpTwo();
                }));},
              ),
            ),

            //Profile 1
        Container(//margin: EdgeInsets.only(bottom :45),
              child:  ListTile(title: Icon(Icons.assignment_ind,size: 70,color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 25),child: Text("Profile 1", style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfileOnePage();
                }));},
              ),
            ),


            //Profile 2
            Container(
              child:  ListTile(title: Icon(Icons.assignment_ind,size: 70,color: Theme.of(context).primaryColor,),
                subtitle: Padding(padding: EdgeInsets.only(left: 25),child: Text("Profile 2", style: textStyle,)),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfileTwo();
                }));},
              ),
            ),

            //Ecommerce
            Container(
                child:  ListTile(title: Icon(Icons.account_balance_wallet,size: 70,color: Theme.of(context).primaryColor,),
                  subtitle: Padding(padding: EdgeInsets.only(left: 10),child: Text("Ecommerce",style: textStyle,)),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                    return EcommerceTwoPage();
                  }));},
                ),
              ),


              // Hidden Menu
           Container(
                child:  ListTile(title: Icon(Icons.device_unknown,size: 70,color: Theme.of(context).primaryColor,),
                  subtitle: Padding(padding: EdgeInsets.only(left: 29),child: Text("Hidden Menu",style: textStyle,)),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                   return HiddenMenuPage();
                  }));},
                ),
              ),

             Container(
               child:  ListTile(title: Icon(Icons.settings,size: 70,color: Theme.of(context).primaryColor,),
                 subtitle: Padding(padding: EdgeInsets.only(left: 8),child: Text("   Settings",style: textStyle,)),
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Setting();
                 }));},
               ),
             ),



          ],
        ));
  }


}
