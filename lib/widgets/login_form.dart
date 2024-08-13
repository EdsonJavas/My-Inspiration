import 'package:flutter/material.dart';
import 'text_field.dart';

class LoginForm extends StatelessWidget {
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final bool obscureText;
  final VoidCallback togglePasswordVisibility;

  const LoginForm({
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.obscureText,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextFieldWidget(
            focusNode: emailFocusNode,
            labelText: 'Email',
            prefixIcon: Icons.email,
            obscureText: false,
          ),
          const SizedBox(height: 16),
          TextFieldWidget(
            focusNode: passwordFocusNode,
            labelText: 'Password',
            prefixIcon: Icons.lock,
            obscureText: obscureText,
            suffixIcon: IconButton(
              icon: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: togglePasswordVisibility,
            ),
          ),
        ],
      ),
    );
  }
}
