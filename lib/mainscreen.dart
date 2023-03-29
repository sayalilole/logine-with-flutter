import 'package:flutter/material.dart';
import 'package:untitled5/splash_screen.dart';
class MainScreen extends StatelessWidget {
  //const MainScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState>_globalKey=GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          _globalKey.currentState?.openDrawer();
        //
        }),
        title: Text("MainScreen"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){
         //
          }),
        ],

      ),
      body: Center(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('nextpage'),
        ),
      ),
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader(child: Text('wellcome',
              style: TextStyle(color: Colors.white,
             // backgroundColor: Colors.cyan,
            ),
            ),
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
            ),
            ListTile(
              title: Text("menu1"),
             onTap:(){

                Navigator.pop(context);
             },

            ),
            ListTile(
              title: Text("menu1"),
              onTap:(){

                Navigator.pop(context);
              },
            ),
            ListTile( title: Text("menu1"),
              onTap:(){

                Navigator.pop(context);
              },

            ),
          ],
        ),
      ),
    );
  }
}
