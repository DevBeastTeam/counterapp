import 'package:counterapp/controllers/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DoctorModel doctor = Get.arguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6EC),
      appBar: AppBar(
        title: const Text("Book Appointment"),
        backgroundColor: const Color(0xFF9C4A7F),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Dr. ${doctor.name}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF9C4A7F),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Select Date & Time",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Chip(label: Text("12 Oct")),
                Chip(label: Text("13 Oct")),
                Chip(label: Text("14 Oct")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Chip(label: Text("10:00 AM")),
                Chip(label: Text("1:00 PM")),
                Chip(label: Text("4:00 PM")),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C4A7F),
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => Get.toNamed('/thankyou'),
              child: const Text("Confirm Appointment"),
            ),
          ],
        ),
      ),
    );
  }
}
