import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/components/form.component.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({ Key? key }) : super(key: key);
  

  @override
  _VerificationPageState createState() => _VerificationPageState();
}
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconComeback(),
                  const Text(
                    'Verification',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 34,
                    ),
                  ),
              Text(
                  "a four digit verification code has been sent to your mobile number"),
              FormVerification(),
            ],
          ),
        )
        )
    );
  }
}

          // child: Container(
          //   padding: const EdgeInsets.fromLTRB(30, 24, 30, 30),
          //   color: Colors.white,
          //   child: Form(
          //     key: _formKey,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         const Text(
          //           'Verification',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontStyle: FontStyle.italic,
          //             fontSize: 34,
          //           ),
          //         ),
          //      FormVerification()
          //         const SizedBox(height: 32),
          //       ],
          //     )
          //   ),
          // ),