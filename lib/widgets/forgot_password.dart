import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Implement forgot password action
      },
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
