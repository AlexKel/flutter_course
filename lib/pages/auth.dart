import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    image: AssetImage('assets/background.jpg'))),
            padding: EdgeInsets.all(10.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    setState(() {
                      _emailValue = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      _passwordValue = value;
                    });
                  },
                ),
                SwitchListTile(
                  value: _termsAccepted,
                  onChanged: (bool value) {
                    setState(() {
                      _termsAccepted = value;
                    });
                  },
                  title: Text('Accept terms'),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    child: Text('LOGIN'),
                    onPressed: () {
                      print(_emailValue);
                      print(_passwordValue);
                      Navigator.pushReplacementNamed(context, '/products');
                    })
              ],
            )))));
  }
}
