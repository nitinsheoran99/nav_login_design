import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Input Name'),
                validator: (name1) {
                  if (name1 == null || name1.isEmpty) {
                    return 'Please input name';
                  }
                  /*  if(name1!="Abc"){
                    return "please input specific name";
                  }*/
                  return null;
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Input Email'),
                validator: (name1) {
                  if (name1 == null || name1.isEmpty) {
                    return 'Please input email';
                  }
                  /* if(name1!="Abc"){
                    return "please input specific name";
                  }*/
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'Input Password'),
                validator: (password1) {
                  if (password1 == null || password1.isEmpty) {
                    return 'Please input password';
                  }
                  /* if(password1.length!=5){
                    return 'password must be 5 digit';
                  }
                  if(password1!='12345'){
                    return 'Please input specific numbertype';
                  }*/
                },
              ),
              TextFormField(
                controller: confirmpasswordController,
                decoration: InputDecoration(hintText: 'Confirm Password'),
                validator: (password1) {
                  if (password1 == null || password1.isEmpty) {
                    return 'Please confirm password';
                  }
                  /*  if(password1.length!=5){
                    return 'password must be 5 digit';
                  }
                  if(password1!='12345'){
                    return 'Please input specific numbertype';
                  }*/
                  if (password1 !=passwordController ) {
                    return 'please input same password';
                  }
                },
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {}
                    },
                    child: Text('Signup'),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
