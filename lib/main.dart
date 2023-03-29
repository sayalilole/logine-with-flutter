import 'package:flutter/material.dart';
import 'package:untitled5/mainscreen.dart';


void main() => runApp(MaterialApp(
  title: "app",
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('login page'),

        ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Text(
            'login',
            style: TextStyle(
              fontSize: 35,
              color: Colors.teal,
              fontWeight: FontWeight.bold
          ),

          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'email',
                      hintText: 'enter email',
                      prefixIcon: Icon( Icons.email),
                      border: OutlineInputBorder(),

                    ),
                    onChanged: (String value){

                    },
                    validator: (value){
                      return value!.isEmpty ? 'please enter the email' : null;


                    },
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'enter password',
                      prefixIcon: Icon( Icons.password),
                      border: OutlineInputBorder(),

                    ),
                    onChanged: (String value){

                    },
                    validator: (value){
                      return value!.isEmpty ? 'please enter the password' : null;


                    },
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed:() {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));
                    },
                    child: Text('login'),
                  color: Colors.teal,
                    textColor: Colors.white,
                  ),
                ),



             // ElevatedButton(onPressed: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
             // }, child: Text('next'))
              ],
            ),
            ),
          ),

         ],
       ),
      ),
    );
  }
}
