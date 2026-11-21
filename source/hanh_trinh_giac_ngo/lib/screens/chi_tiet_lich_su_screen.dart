import 'package:hanh_trinh_giac_ngo/screens/lich_su_dap_an_screen.dart';
import 'package:material_ui/material_ui.dart';

class ChiTietLichSuScreen extends StatefulWidget {
  const ChiTietLichSuScreen({super.key});

  @override
  State<ChiTietLichSuScreen> createState() => _ChiTietLichSuScreenState();
}

class _ChiTietLichSuScreenState extends State<ChiTietLichSuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Chi tiết hành trình',
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Đề 1',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF6B4320),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Câu đúng',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF6B4320),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Câu sai',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF6B4320),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '15:15',
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Thời gian\nhoàn thành',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6B4320),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chủ đề',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Nhân Quả',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6B4320),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Độ khó',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Dễ',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6B4320),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Số điểm',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '+ 20 Điểm công đức',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6B4320),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ngày làm',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '19:30 20/11/2026',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LichSuDapAnScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE8C17D),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'XEM ĐÁP ÁN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
