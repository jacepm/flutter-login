import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _titleBuilder(text: 'Hello'),
              Row(
                children: <Widget>[
                  _titleBuilder(text: 'There'),
                  _titleBuilder(text: '.', color: Colors.green),
                ],
              ),
              _inputBuilder(controller: email, label: 'EMAIL'),
              _inputBuilder(
                controller: password,
                label: 'PASSWORD',
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                onTap: () {},
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                color: Colors.green,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              SizedBox(height: 20.0),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.facebookF),
                    SizedBox(width: 10.0),
                    Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleBuilder({String text, Color color = Colors.black}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 60.0,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Widget _inputBuilder(
      {@required TextEditingController controller,
      @required String label,
      bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}
