import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: LoginApp(),
    ));

class LoginApp extends StatefulWidget {
  @override
  LoginState createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<LoginApp> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        padding: EdgeInsets.all(40.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment
                    .topLeft, //Enga iruthadhu colour start aganum and enga mudiyanum nu soildradhuku
                end: Alignment.bottomRight,
                stops: [
              0.1,
              0.4,
              0.7,
              0.9
            ],
                colors: [
              Colors.purple[600],
              Colors.purple[500],
              Colors.purple[300],
              Colors.purple[200],
            ])),
        child: Center(
          child: ListView(
            shrinkWrap: true, //center of the Widget
            children: <Widget>[
              Image.asset(
                "assets/nike_logo.png",
                height: 50.0,
                color: Colors.white, //image colour change properte
              ),
              SizedBox(
                //space
                height: 40,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please Enter the user name";
                        } else if (value.length > 8) {
                          return "user name exceed 8 charter";
                        }
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                          ),
                          errorStyle: TextStyle(color: Colors.white),
                          hintText: "user name",
                          hintStyle: TextStyle(color: Colors.white10)),
                    ),
                    SizedBox(height: 30.0),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please Enter the Password";
                        }
                      },
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white10)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment
                            .topLeft, //Enga iruthadhu colour start aganum and enga mudiyanum nu soildradhuku
                        end: Alignment.bottomRight,
                        stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9
                    ],
                        colors: [
                      Colors.purple[600],
                      Colors.purple[500],
                      Colors.purple[300],
                      Colors.purple[200],
                    ])),
                child: ButtonTheme(
                  buttonColor: Colors.white10,
                  height: 50.0,
                  minWidth: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("Form Validate Successfully"),
                        ));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirsrPage()));
                      } else {
                        scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("Form Validate Error"),
                        ));
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Forgot Password ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, //center of the logo
                children: <Widget>[
                  Image.asset(
                    "assets/nike_logo.png",
                    height: 50.0,
                    color: Colors.white, //image colour change properte
                  ),
                  Image.asset(
                    "assets/nike_logo.png",
                    height: 50.0,
                    color: Colors.white, //image colour change properte
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FirsrPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("Home"),
    );
  }
}
