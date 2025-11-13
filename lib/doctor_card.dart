import 'package:counterapp/controllers/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorCard extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          backgroundImage: AssetImage(doctor.image),
          radius: 28,
        ),
        title: Text(
          doctor.name,
          style: const TextStyle(
            color: Color(0xFF9C4A7F),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(doctor.speciality),
        trailing: ElevatedButton(
          onPressed: () => Get.toNamed('/doctorDetails', arguments: doctor),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF9C4A7F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text("View"),
        ),
      ),
    );
  }
}
