import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/AuthModule/register_view.dart';

class ConstantWidgets {
  Widget textSpan(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SafeArea(
        child: RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: const TextStyle(
              fontSize: 13.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              const TextSpan(text: "Doesn't have an account? "),
              TextSpan(
                  text: "Register now ",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SelectAgeView()),
                      //     (route) => false);

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const RegisterView(),
                      ));
                    },
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff171A3E))),
            ],
          ),
        ),
      ),
    );
  }

  Widget textSpanSignup(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SafeArea(
        child: RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              const TextSpan(text: "Already have an account? "),
              TextSpan(
                  text: "Sign in!",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context)
                        ..pop()
                        ..pop();
                    },
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff4A9596))),
            ],
          ),
        ),
      ),
    );
  }
}
