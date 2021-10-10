import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_login_design/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Padding(padding:  EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(hintText: 'Input Name',icon: Icon(Icons.person)),
                      validator: (name1){
                        if(name1==null || name1.isEmpty){
                          return 'Please input name';
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(hintText: 'Input Password',icon: Icon(Icons.password)),
                      validator: (password1){
                        if(password1==null || password1.isEmpty){
                          return 'Please input password';
                        }
                      },
                    ),
                    SizedBox(height:32),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width/2.5,
                            child: ElevatedButton(onPressed: (){
                              String name="Abc";
                              int password=12345;
                              Navigator.push(context, MaterialPageRoute(builder:
                                  (context)=>LoginPage(),));
                            },
                              child: Text('Login'),)),
                        SizedBox(width:32,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.5,
                            child: ElevatedButton(onPressed: (){},
                                child: Text('Signup'))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
