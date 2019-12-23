import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation/new_page.dart';
void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override  
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.lime
      ),
      home: new HomePage(),
      routes:<String, WidgetBuilder>{
        "/a": (BuildContext context) => new NewPage("New Page"),
      }


      

      
);
  }

}

class HomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("drawer App"),
        elevation: debugDefaultTargetPlatformOverride == TargetPlatform.android ? 5.0 : 0.0,
         ),
         drawer: new Drawer(
           child: new ListView(
             children: <Widget>[
               new UserAccountsDrawerHeader(
                 accountName: new Text("Mohamed Thariq"),
                 accountEmail: new Text("mohamedthariq0705@gmail.com"),
                 currentAccountPicture: new CircleAvatar(
                   backgroundColor: Colors.white60,
                   child: new Text("T"),

                 ),
                 otherAccountsPictures: <Widget>[
                   new CircleAvatar(
                   backgroundColor: Colors.white60,
                   child: new Text("M"),
                   )



                 ],
               ),
               new ListTile(
                 title: new Text ("page One"),
                 trailing: new Icon(Icons.arrow_upward),
                 onTap: () => Navigator.of(context).pushNamed("/a"),
               ),
                new ListTile(
                 title: new Text ("Page Two"),
                 trailing: new Icon(Icons.arrow_downward),
               ),
               new Divider(),
               new ListTile(
                 title: new Text ("Close"),
                 trailing: new Icon(Icons.close),
                 onTap:() => Navigator.of(context).pop,
               ),
             ],
           ) 
         ),
         body: new Container(
           child: new Center(
             child: new Text (
               "HomePage",
             ),
           )
         ),


    
      
    );
  }
}

