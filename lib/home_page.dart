import 'package:counterapp/controllers/bottom_navbar.dart';
import 'package:counterapp/controllers/doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DoctorController controller = Get.put(DoctorController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6EC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Find Your Desired Doctor",
          style: TextStyle(
            color: Color(0xFF9C4A7F),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Color(0xFF9C4A7F)),
                hintText: "Search doctor, category...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Top Doctors",
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.doctors.length,
                  itemBuilder: (context, index) {
                    final doc = controller.doctors[index];
                    return DoctorCard(doctor: doc);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
