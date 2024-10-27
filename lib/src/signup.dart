import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Future<void> _performSignUp() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      if (mounted) {
        Navigator.pushNamed(context, '/plantlist');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка регистрации: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Регистрация')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Повторите пароль'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _performSignUp,
              child: const Text('Зарегистрироваться'),
            ),
          ],
        ),
      ),
    );
  }
}
