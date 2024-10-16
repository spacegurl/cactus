import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String appDescription = """
    Приложение 'Plants' предназначено для любителей растений. Оно помогает расширить знания о ботанике и уходе за растениями.

    С его помощью вы можете находить информацию о ваших любимых растениях и получать советы по их выращиванию.

    Разработчик: Пеленицына П.А.

    Написано на fLuTtEr.
    """;

    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            appDescription,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
