import 'package:hanh_trinh_giac_ngo/screens/chon_chu_de_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/dao_huu_screen.dart';
import 'package:material_ui/material_ui.dart';
import 'package:hanh_trinh_giac_ngo/screens/hanh_trinh_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/bang_xep_hang_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/homescreen_background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DaoHuuScreen(),
                          ),
                        );
                      },
                      icon: Image.asset('assets/images/DaoHuu.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/CaiDat.png'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        bang_xep_hang(context);
                      },
                      icon: Image.asset('assets/images/BangXepHang.png'),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HanhTrinhScreen(),
                          ),
                        );
                      },
                      icon: Image.asset('assets/images/HanhTrinh.png'),
                    ),
                  ],
                ),
                SizedBox(height: 410),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ChonChuDeScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    backgroundColor: Color(0xFF956429),
                    foregroundColor: Color(0xFFE8C17D),
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                    ),
                  ),
                  child: Text(
                    'CHƠI',
                    style: TextStyle(color: Color(0xFFE8C17D), fontSize: 28),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
