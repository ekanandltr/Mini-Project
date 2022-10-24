import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:mini_project/const.dart';
import 'package:mini_project/pages/onboard.dart';
import 'package:mini_project/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  bool checkLogin = _prefs.getBool("isLoggedIn") ?? false;
  runApp(MyApp(checkLogin));
}

class MyApp extends StatelessWidget {
  bool checkLogin;

  MyApp(this.checkLogin);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _formKey = GlobalKey<FormState>();

  setLoginStatus() async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool("isLoggedIn", true);
    showSimpleNotification(Text("You are logged In"), background: Colors.teal);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Image.network('https://i.ibb.co/qxBw7Mr/cat1.png',
                width: 185, height: 218, fit: BoxFit.cover),
                Text(' '),
                Text(
              'Hello Pet',
              style: poppins.copyWith(
                  height: 1.2,
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            Text(' '),
            Text(' '),
                TextFormField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                          labelText: "Username",
                      hintText: "username"),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return "Enter username";
                    } else {}
                  },
                ),
                space,
                TextFormField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                          labelText: "Password",
                      hintText: "password"),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return "Enter password";
                    } else {}
                  },
                ),
                SizedBox(height: 50.0),
                Container(
                    width: MediaQuery.of(context).size.width / 1.06,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setLoginStatus();
                          }
                        },
                        child: Text("Login", style: poppins.copyWith(color: white, fontSize: 16),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
