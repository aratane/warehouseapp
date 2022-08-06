import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forgotPassScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isRememberMe = false;

  // Textfield Username
  Widget buildUsername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Username',
          style: TextStyle(
              color: Color(0xff210E41),
              fontSize: 16,
              fontWeight: FontWeight.normal
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0,1)
              )
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 15.0,
              height: 2.0
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        )
      ],
    );
  }
  // Textfield Password
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
              color: Color(0xff210E41),
              fontSize: 16,
              fontWeight: FontWeight.normal
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87,
              fontSize: 15.0,
              height: 2.0
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
      ],
    );
  }
  // Checkbox Button Remember Me
  Widget buildRememberCb() {
    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.black,
              activeColor: Color(0xff10FF53),
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
                color: Color(0xff210E41),
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
  // Button Login
  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1),
      width: double.infinity,
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff45004D),
              fixedSize: Size(400, 50),
              padding: EdgeInsets.symmetric(horizontal: 170),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3)
              ),
            ),
          ),
        ],
      ),
    );
  }
  // Button Forgor Password
  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassScreen()));
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
              color: Color(0xff210E41),
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 50),
                      buildUsername(),
                      const SizedBox(height: 20),
                      buildPassword(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildForgotPassBtn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}