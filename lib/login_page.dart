import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_login_design/add_expence.dart';
import 'package:nav_login_design/view_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Text('View'),
            Text('Add Expence'),
          ],),
        ),
        body:TabBarView(
          children: [
            ViewPage(),
            AddExpence(),
          ],
        ),
      ),
    );
  }
}
