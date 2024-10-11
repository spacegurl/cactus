import 'package:flutter/material.dart';

class SignInScreenWeb extends StatelessWidget {
  const SignInScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Авторизация WEB')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(
                decoration: InputDecoration(labelText: 'Пароль'),
                obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Войти'),
            ),
            TextButton(
              onPressed: () {
              },
              child: const Text('Регистрация'),
            ),
          ],
        ),
      ),
    );
  }
}
