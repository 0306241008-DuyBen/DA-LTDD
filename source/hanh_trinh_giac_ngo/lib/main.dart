import 'package:hanh_trinh_giac_ngo/screens/login_screen.dart';
import 'package:material_ui/material_ui.dart';
import 'package:hanh_trinh_giac_ngo/screens/home_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WelcomeScreen(),
    );
  }
}