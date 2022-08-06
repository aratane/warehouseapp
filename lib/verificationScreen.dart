import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:warehouse/newPassScreen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreen createState() => _VerificationScreen();
}

class _VerificationScreen extends State<VerificationScreen> {

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
              "Verification Code",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),
          Expanded(
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 70),
                  OtpTextField(
                    numberOfFields: 6,
                    borderWidth: 3.0,
                    borderColor: Colors.black,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                    },
                  ),

                  // Untuk jarak top dan bottom Button SEND
                  const SizedBox(height: 70),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassScreen()));
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
              ]
              ),
            ),
          ),
    ]
      )
    );
  }
}