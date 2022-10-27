import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/const.dart';
import 'package:mini_project/pages/root_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: content(),
    )
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Image.asset("assets/images/catty.png"),
          ),
        ),
        Text(''),
        Text(
          'Hello Pet',
          style: poppins.copyWith(
              height: 1.2,
              color: black,
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        SizedBox(
          height: 20,
        ),
        inputStyle("Username", "Username"),
        SizedBox(
          height: 40,
        ),
        inputStyle("Password", "Password"),
        SizedBox(
          height: 60,
        ),
        Container(
            height: 60,
            width: 325,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RootApp()),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )),
      ],
    );
  }
}

Widget inputStyle(String title, String hintText) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
    child: Row(
      children: [
        Text(
          "$title :",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hintText),
            ),
          ),
        ),
      ],
    ),
  );
}
