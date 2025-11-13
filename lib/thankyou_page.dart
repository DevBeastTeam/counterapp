import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E6EC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Color(0xFF9C4A7F), size: 100),
            const SizedBox(height: 20),
            const Text(
              "Thank You!",
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFF9C4A7F),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text("Your appointment is confirmed."),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C4A7F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
              onPressed: () => Get.offAllNamed('/home'),
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
