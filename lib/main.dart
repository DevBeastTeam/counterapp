// import 'package:counterapp/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const DoctorApp());
// }

// class DoctorApp extends StatelessWidget {
//   const DoctorApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "DocTime - Doctor Booking App",
//       theme: ThemeData(
//         primaryColor: const Color(0xFF9C4A7F),
//         scaffoldBackgroundColor: const Color(0xFFF5E6EC),
//         textTheme: GoogleFonts.poppinsTextTheme(),
//         useMaterial3: true,
//       ),
//       // ✅ Directly open HomePage first
//       home: const HomePage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const CounterPage(),
    );
  }
}
