import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:test_task_vip_line/core/extension/context_extensions.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign_up_screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const snackBarErrorText = 'Only Apple Authorization is available for now!\nSorry for inconvenience';

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInButtonBuilder(
              text: 'Get going with Email',
              icon: Icons.email,
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
              backgroundColor: Colors.blueGrey[700]!,
              width: 220.0,
            ),
            const Divider(),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.FacebookNew,
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.Apple,
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.GitHub,
              text: "Sign up with GitHub",
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.Microsoft,
              text: "Sign up with Microsoft ",
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            SignInButton(
              Buttons.Twitter,
              text: "Use Twitter",
              onPressed: () {
                context.showSnackBar(snackBarErrorText);
              },
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  onPressed: () {
                    context.showSnackBar(snackBarErrorText);
                  },
                ),
                SignInButton(
                  Buttons.Tumblr,
                  mini: true,
                  onPressed: () {
                    context.showSnackBar(snackBarErrorText);
                  },
                ),
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  onPressed: () {
                    context.showSnackBar(snackBarErrorText);
                  },
                ),
                SignInButtonBuilder(
                  icon: Icons.email,
                  text: "Ignored for mini button",
                  mini: true,
                  onPressed: () {
                    context.showSnackBar(snackBarErrorText);
                  },
                  backgroundColor: Colors.cyan,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
