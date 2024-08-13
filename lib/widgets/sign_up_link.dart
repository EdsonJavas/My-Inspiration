import 'package:flutter/material.dart';

class SignUpLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Don\'t have an account?'),
        TextButton(
          onPressed: () {
            // Implement sign up action
          },
          child: Text(
            'Sign Up',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
