import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/components/form.component.dart';
import 'package:register/components/global.title.dart';
import 'package:register/components/icon.back.dart';
import 'package:register/util/color.util.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.fromLTRB(30, 24, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconBack(),
          GlobalTitle(text: "Verification", padddingBottom: 10),
          const Text(
              "a four digit verification code has been sent to your mobile number"),
          FormVerification(),
          const SizedBox(height: 79),
          CupertinoButton(
            onPressed: () => {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorUtils.red,
              ),
              width: double.infinity,
              height: 50,
              child: const Center(
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          CupertinoButton(
            onPressed: () => {},
            child: Container(
              width: double.infinity,
              height: 50,
              child: const Center(
                child: Text(
                  "Resend",
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    )));
  }
}