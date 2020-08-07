import 'package:flutter/material.dart';

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
