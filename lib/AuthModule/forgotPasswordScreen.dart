import 'package:flutter/material.dart';
import '../CustomWidgets/customTextField.dart';
import '../CustomWidgets/custom_app_bar.dart';
import '../Utils/Validator.dart';
import '../Utils/app_strings.dart';
import '../Utils/validation_strings.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  get child => null;
  final _formKey = GlobalKey<FormState>();

  TextEditingController mailTextEditCTR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          backButton: true,
          backButtonText: false,
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
                              forgetTitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff171A3E),
                              ),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              forgotSubHeader,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
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
                                hintText: emailForgotHint,
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
                        restMyPassword,
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
