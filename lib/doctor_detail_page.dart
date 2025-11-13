import 'package:counterapp/controllers/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DoctorModel doctor = Get.arguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6EC),
      appBar: AppBar(
        title: Text(doctor.name),
        backgroundColor: const Color(0xFF9C4A7F),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(backgroundImage: AssetImage(doctor.image), radius: 50),
            const SizedBox(height: 15),
            Text(
              doctor.speciality,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF9C4A7F),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              doctor.about,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C4A7F),
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => Get.toNamed('/appointments', arguments: doctor),
              child: const Text("Book Appointment"),
            ),
          ],
        ),
      ),
    );
  }
}
