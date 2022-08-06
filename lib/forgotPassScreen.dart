import 'package:flutter/material.dart';
import 'package:warehouse/verificationScreen.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  _ForgotPassScreen createState() => _ForgotPassScreen();
}

class _ForgotPassScreen extends State<ForgotPassScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4E00CE),
      body: Column(
        children: [
          const SizedBox(height: 150),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 60),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "Forgot Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.normal
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 50),
                  const Text(
                    "Email",
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
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0,1)
                        )
                      ],
                    ),
                    height: 60,
                      child: const TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                  ),
                  // Untuk jarak top dan bottom Button SEND
                  const SizedBox(height: 70),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff45004D),
                      fixedSize: const Size(400, 60),
                      padding: const EdgeInsets.symmetric(horizontal: 170),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)
                      )
                    ),
                    child: const Text('SEND'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}