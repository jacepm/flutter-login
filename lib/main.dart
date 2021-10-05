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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _widgetList(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _widgetList() {
    return <Widget>[
      _titleBuilder(text: 'Hello'),
      _titleRow(),
      _inputBuilder(controller: email, label: 'EMAIL'),
      _inputBuilder(
        controller: password,
        label: 'PASSWORD',
        obscureText: true,
      ),
      SizedBox(height: 20.0),
      _gestureBuilder(text: 'Forgot Password', textAlign: TextAlign.right),
      SizedBox(height: 20.0),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          primary: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        onPressed: () {},
      ),
      SizedBox(height: 20.0),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
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
        onPressed: () {},
      ),
      SizedBox(height: 20.0),
      _gestureBuilder(text: 'Register'),
    ];
  }

  Widget _titleRow() {
    return Row(
      children: <Widget>[
        _titleBuilder(text: 'There'),
        _titleBuilder(text: '.', color: Colors.green),
      ],
    );
  }

  Widget _titleBuilder({@required String text, Color color = Colors.black}) {
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

  Widget _gestureBuilder(
      {@required String text, TextAlign textAlign = TextAlign.center}) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.green,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: textAlign,
      ),
      onTap: () {},
    );
  }
}
