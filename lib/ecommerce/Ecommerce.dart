import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_uis/CodeView.dart';

class EcommerceTwoPage extends StatelessWidget {
  final List<Map> items = [
    {"title":"Black Sneckers", "category":"Shoes", "price": 170,
      "tags":"#Cotton #polyster #Branded design","image":"images/shoes1.jpg"},
    {"title":"White Shoes", "category":"Shoes", "price": 67, 
      "tags":"#Cotton #polyster #Branded design","image":"images/shoes2.jpg"},
    {"title":"Golden Soft Sneckers", "category":"Shoes", "price": 80, 
      "tags":"#Cotton #polyster #Branded design","image":"images/shoes3.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( actions: <Widget>[
          FlatButton( onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CodeView("code/ecom.jpg");
            }));
          },
            child:  Text("Code",style: TextStyle(fontSize: 25),),
          ),
        ],
        backgroundColor: Colors.white70,

        leading: IconButton(
            onPressed: (){Drawer();},
          icon: Icon(Icons.menu, color: Colors.grey.shade700,)),
        title: Text('Shopping', style: TextStyle(
          color: Colors.black87,
        ),), centerTitle: true,
        bottom: _buildBottomBar(),
      ),
      body: SafeArea(
          child: ListView.builder(
            itemBuilder: _buildListView,
            itemCount: items.length + 1,
          )
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.category),
            title: Text("Shop")),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
            title: Text("Favorites")),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
            title: Text("Notifications")),
        BottomNavigationBarItem(icon: Icon(Icons.location_on),
            title: Text("Near me")),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
            title: Text("Settings")),
      ],
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.blue,
    );
  }
  PreferredSize _buildBottomBar() {
    return PreferredSize( child: Container(
        padding: EdgeInsets.all(10.0), child: Card(
          child: Container( child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: IconButton(onPressed: (){},
                      icon: Icon(Icons.search)),
                  suffixIcon: IconButton(onPressed: (){},
                      icon: Icon(Icons.mic))
              ),),),
        ),),
      preferredSize: Size.fromHeight(80.0),
    );
  }

  Widget _buildListView(BuildContext context, int index) {
    if(index==0) return Container(
      padding: EdgeInsets.all(20.0), child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[ Text("Branded Shoes",
            style: TextStyle( fontSize: 18.0
            ),),
          Text("See All", style: TextStyle(color: Colors.grey.shade500)),
        ],),
    );
    Map item = items[index-1];
    return _buildShopItem(item);
  }

  Widget _buildShopItem(Map item) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      margin: EdgeInsets.only(bottom: 10.0), height: 400,
      child: Column( children: <Widget>[
          Expanded(child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image:
              AssetImage(item["image"]), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [ BoxShadow(color: Colors.grey,
                    offset: Offset(5.0,5.0), blurRadius: 10.0)
                ]),
          )),
          Expanded(child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[ Text(item["title"],style: TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.w700
                ),),
                Text(item["category"], style: TextStyle(
                    color: Colors.grey, fontSize: 18.0
                )),
                SizedBox(height: 20.0,),
                Text("\$${item["price"].toString()}", style: TextStyle(
                  color: Colors.red, fontSize: 30.0,
                )),
                SizedBox(height: 20.0,),
                Text(item["tags"], style: TextStyle(
                    fontSize: 18.0, color: Colors.grey, height: 1.5
                ))],
            ),
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight:
                Radius.circular(10.0), topRight: Radius.circular(10.0)
                ),
                color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey,
                      offset: Offset(5.0,5.0), blurRadius: 10.0)
                ]),
          ),)
        ],),
    );
  }
}



