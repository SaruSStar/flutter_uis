import 'package:flutter/material.dart';
import 'package:flutter_uis/CodeView.dart';


class Setting extends StatelessWidget {
  TextStyle mytitle=TextStyle(fontSize: 17,fontWeight: FontWeight.w600,);
  TextStyle mysub=TextStyle(fontSize: 12,fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        leading: Icon(Icons.search,size: 45,color:Colors.lightGreen.shade900,),
        title:  Text("Search Settings",
          style: TextStyle(color: Colors.black)),
        actions: <Widget>[FlatButton(child: Text("Code",style: mytitle

        ),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CodeView("code/setting.jpg");
  }));
},)],
      ),
      body: SingleChildScrollView(child: Column(children: <Widget>[
        SizedBox(height: 28,),
        Container( color: Colors.white70,child:
        ListTile(leading: Icon(Icons.vibration,size: 30,
          color: Colors.lightGreen.shade900,),
         title: Text("Phone is set to vibrate",style: mytitle,),
          trailing: Icon(Icons.keyboard_arrow_down,size: 30,),
        ),
       ),

        InkWell(splashColor: Colors.indigoAccent, onTap: (){},  child:
        ListTile(leading:CircleAvatar(backgroundColor: Colors.indigoAccent,
            child: Icon(Icons.network_wifi,size: 30,color: Colors.white,)
        ),
          title: Text("Network & Internet ",style: mytitle,),
          subtitle: Text("Wi-Fi, mobile, data usage, hotspot",style: mysub,),
        )),

        InkWell(splashColor: Colors.lightGreen,onTap: (){},
            child: ListTile(leading:CircleAvatar(backgroundColor:
            Colors.lightGreen, child: Icon(Icons.devices_other,size: 30,
              color: Colors.white,)),
          title: Text("Connected Devices ",style: mytitle,),
          subtitle: Text("Bluetooth",style: mysub,),
        )),

        InkWell(splashColor: Colors.deepOrange,onTap: (){},
           child:  ListTile(leading:CircleAvatar(backgroundColor:
           Colors.deepOrange, child: Icon(Icons.apps,size: 30,
             color: Colors.white,)),
          title: Text("Apps & notifications ",style: mytitle,),
          subtitle: Text("Permissions, default apps",style: mysub,),
        )),

        InkWell(splashColor: Colors.deepPurple,onTap: (){},child:
        ListTile(leading:CircleAvatar(backgroundColor: Colors.deepPurple,
            child: Icon(Icons.battery_full,size: 30,color: Colors.white,)
        ),
          title: Text(" Battery ",style: mytitle,),
       subtitle: Text("45% - Should last until about 9:15 AM",style: mysub,),
        )),

        InkWell(splashColor: Colors.yellow.shade700,onTap: (){},child:
        ListTile(leading:CircleAvatar(backgroundColor: Colors.yellow.shade700,
            child: Icon(Icons.brightness_6,size: 30,color: Colors.white,)
        ),
          title: Text(" Display ",style: mytitle,),
          subtitle: Text("Wallpaper, sleep, font size",style: mysub,),
        )),

        InkWell(splashColor: Colors.red,onTap: (){},child:
        ListTile(leading:CircleAvatar(backgroundColor: Colors.red,
            child: Icon(Icons.volume_down,size: 30,color: Colors.white,)
        ),
          title: Text(" Sound ",style: mytitle,),
          subtitle: Text("Volume, vibration, Do Not Disturb",style: mysub,),
        ),),

        InkWell(splashColor: Colors.cyanAccent.shade700,onTap: (){},child:
        ListTile(leading:CircleAvatar(backgroundColor:
        Colors.cyanAccent.shade700, child: Icon(Icons.storage,size: 30,
          color: Colors.white,)),
          title: Text("Storage",style: mytitle,),
          subtitle: Text("57% used -27.49GB free",style: mysub,),
        ),),

        InkWell(splashColor: Colors.purpleAccent,onTap: (){},child:
        ListTile(leading:CircleAvatar(backgroundColor: Colors.purpleAccent,
            child: Icon(Icons.lock_outline,size: 30,color: Colors.white,)
        ),
          title: Text("Security & location",style: mytitle,),
          subtitle: Text("Screen lock, fingerprint",style: mysub,),
        ),),
      ],),)
    );
  }
}



