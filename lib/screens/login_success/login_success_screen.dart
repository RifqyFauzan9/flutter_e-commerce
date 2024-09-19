import 'package:flutter/material.dart';
import 'package:e_commerce/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const routeName = '/login_success';

  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
