import 'package:flutter/material.dart';

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
                      onPressed: () {},
                      icon: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/images/Energy.png'),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              '25000000',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                      onPressed: () {},
                      icon: Image.asset('assets/images/DiemDanh.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/HanhTrinh.png'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/BangXepHang.png'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/DaoHuu.png'),
                    ),
                  ],
                ),
                SizedBox(height: 310),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Play.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
