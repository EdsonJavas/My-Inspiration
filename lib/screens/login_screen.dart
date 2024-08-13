import 'package:flutter/material.dart';
import '../widgets/logo.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';
import '../widgets/forgot_password.dart';
import '../widgets/sign_up_link.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Logo(),
                const SizedBox(height: 20),
                LoginForm(
                  emailFocusNode: _emailFocusNode,
                  passwordFocusNode: _passwordFocusNode,
                  obscureText: _obscureText,
                  togglePasswordVisibility: _togglePasswordVisibility,
                ),
                const SizedBox(height: 20),
                LoginButton(),
                const SizedBox(height: 20),
                ForgotPassword(),
                const SizedBox(height: 20),
                SignUpLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
