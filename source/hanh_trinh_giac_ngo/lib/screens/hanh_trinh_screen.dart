import 'package:material_ui/material_ui.dart';

class HanhTrinhScreen extends StatefulWidget {
  const HanhTrinhScreen({super.key});

  @override
  State<HanhTrinhScreen> createState() => _HanhTrinhScreenState();
}

class _HanhTrinhScreenState extends State<HanhTrinhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title:  Text(
          'Hành Trình',
          style: TextStyle(
            color: Color(0xFFE8C17D),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/ButtonQuayVe.png'),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Khai Tâm I',
                    style: TextStyle(
                      color: Color(0xFFE8C17D),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '25 Điểm công đức',
                    style: TextStyle(
                      color: Color(0xFFE8C17D),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  for (int i = 1; i <= 15; i++)
                    Card(
                      color: Color(0xFF956429),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Color(0xFFE8C17D), width: 2.5),
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trận #$i",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "-25 Điểm công đức",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/images/ButtonXem.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
