import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/AuthModule/forgotPasswordScreen.dart';

import '../CustomWidgets/constant_widgets.dart';
import '../CustomWidgets/customTextField.dart';
import '../CustomWidgets/custom_app_bar.dart';
import '../Utils/Validator.dart';
import '../Utils/app_strings.dart';
import '../Utils/validation_strings.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  get child => null;
  final _formKey = GlobalKey<FormState>();

  TextEditingController mailTextEditCTR = TextEditingController();
  TextEditingController passTextEditCTR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          backButton: false,
          text: navigationText,
          actions: [],
          fontText: 15,
          onTap: () => {Navigator.pop(context)},
        ),
        backgroundColor: const Color(0xffF5F5F5),
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              loginitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff171A3E),
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 15, right: 15),
                              child: CustomTextField(
                                hintText: emailHint,
                                controller: mailTextEditCTR,
                                labelText: "",
                                fillColor: Colors.white,
                                obscureText: false,
                                suffixVisibility: false,
                                Vertical: 8,
                                input: TextInputType.emailAddress,
                                borderSide:
                                    const BorderSide(color: Color(0xffF2F2F7)),
                                validator: (val) {
                                  return Validator.validateEmail(
                                      val ?? "", emailReq, emailValid);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15),
                              child: CustomTextField(
                                hintText: passwordStr,
                                controller: passTextEditCTR,
                                labelText: "",
                                fillColor: Colors.white,
                                obscureText: true,
                                MaxLine: 1,
                                suffixVisibility: false,
                                Vertical: 8,
                                borderSide:
                                    const BorderSide(color: Color(0xffF2F2F7)),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return pwdReq;
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, right: 15, left: 15),
                              child: SizedBox(
                                height: 50,
                                child: TextButton(
                                  onPressed: () {
                                    // ignore: todo
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const ForgotPasswordScreen()));
                                  },
                                  child: const Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      forgotPwd,
                                      // textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Color(0xff555555),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(
                      //     color: const Color(0xff171A3E),
                      //     borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: const Color(0xff171A3E),
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {}
                                },
                                child: const Text(
                                  signIn,
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: ConstantWidgets().textSpan(context)),
                          ])),
                ),
              ),
            ],
          ),
        ));
  }
}
