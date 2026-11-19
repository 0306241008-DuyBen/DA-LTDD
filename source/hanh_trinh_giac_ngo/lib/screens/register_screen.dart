import 'package:hanh_trinh_giac_ngo/screens/welcome_screen.dart';
import 'package:material_ui/material_ui.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 250),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 300,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        obscureText: false,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 206, 171, 111),
                          fontStyle: FontStyle.italic,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF956429),
                          hintText: 'Tên hiển thị',
                          hintStyle: const TextStyle(color: Color(0xFFE8C17D)),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        obscureText: false,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 206, 171, 111),
                          fontStyle: FontStyle.italic,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF956429),
                          hintText: 'Tên tài khoản',
                          hintStyle: const TextStyle(color: Color(0xFFE8C17D)),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 206, 171, 111),
                          fontStyle: FontStyle.italic,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF956429),
                          hintText: 'Mật khẩu',
                          hintStyle: const TextStyle(color: Color(0xFFE8C17D)),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 206, 171, 111),
                          fontStyle: FontStyle.italic,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF956429),
                          hintText: 'Xác nhận mật khẩu',
                          hintStyle: const TextStyle(color: Color(0xFFE8C17D)),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                    SizedBox(
                      width: 143,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF956429),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE4BE77),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: 143,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF956429),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Trở về",
                          style: TextStyle(
                            fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}
