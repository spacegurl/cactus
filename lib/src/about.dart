import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Plants',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Это приложение создано для любителей растений и помогает '
                  'расширить знания о ботанике и уходе за растениями. '
                  'Здесь вы можете находить информацию о ваших любимых растениях и '
                  'получать советы по их уходу.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Версия 1.0.0',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
