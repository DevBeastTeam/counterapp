import 'package:counterapp/controllers/doctor_model.dart';
import 'package:get/get.dart';

class DoctorController extends GetxController {
  var doctors = <DoctorModel>[
    DoctorModel(
      name: "Dr. Marcus Turner",
      speciality: "Cardiologist",
      image: "assets/doctor1.png",
      about: "Expert in heart diseases with 10+ years of experience.",
    ),
    DoctorModel(
      name: "Dr. Olivia Brown",
      speciality: "Dermatologist",
      image: "assets/doctor2.png",
      about: "Skin and beauty specialist providing advanced care.",
    ),
    DoctorModel(
      name: "Dr. Edward",
      speciality: "Child Specialist",
      image: "assets/doctor3.png",
      about: "Pediatrician who cares for your child’s health.",
    ),
  ].obs;
}
