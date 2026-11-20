import 'package:hanh_trinh_giac_ngo/screens/login_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/register_screen.dart';

import 'package:material_ui/material_ui.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/Welcome.jpg', fit: BoxFit.cover),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 250,),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 300,
                    height: 200,
                  ),
                  SizedBox(
                    width: 228,
                    height: 70,
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF956429),
                      elevation: 4, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Bo tròn góc
                      ),
                    ),
                    child: const Text(
                      "Đăng nhập",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE4BE77),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 228,
                    height: 70,
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF956429),
                      elevation: 4, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Bo tròn góc
                      ),
                    ),
                    child: const Text(
                      "Đăng ký",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE4BE77),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
