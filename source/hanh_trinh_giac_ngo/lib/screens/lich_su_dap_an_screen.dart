import 'package:material_ui/material_ui.dart';

class LichSuDapAnScreen extends StatefulWidget {
  const LichSuDapAnScreen({super.key});

  @override
  State<LichSuDapAnScreen> createState() => _LichSuDapAnScreenState();
}

class _LichSuDapAnScreenState extends State<LichSuDapAnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Đề 1',
          style: TextStyle(
            color: Color(0xFFE8C17D),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/ButtonQuayVe.png'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 8, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Câu hỏi:',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ai là người đã sáng lập ra Đạo Phật (Phật giáo) trong lịch sử?',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 22,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF4040),
                              foregroundColor: Color(0xFFE8C17D),
                              elevation: 4,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: BorderSide(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              'A. Phật A Di Đà',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF956429),
                              foregroundColor: Color(0xFFE8C17D),
                              elevation: 4,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: BorderSide(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              'B. Phật Di Lặc',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF1E9A47),
                              foregroundColor: Color(0xFFE8C17D),
                              elevation: 4,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: BorderSide(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              'C. Phật Thích Ca Mâu Ni',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF956429),
                              foregroundColor: Color(0xFFE8C17D),
                              elevation: 4,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: BorderSide(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              'D. Bồ Tát Quan Thế Âm',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Đạo Phật do Thái tử Tất Đạt Đa (Phật Thích Ca Mâu Ni) sáng lập tại Ấn Độ cổ đại. Sau khi giác ngộ, ngài đã truyền dạy con đường giải thoát khổ đau. Các đáp án A, B, D là những vị Phật và Bồ Tát rất phổ biến trong tín ngưỡng Phật giáo (đặc biệt là Phật giáo Đại thừa), nhưng không phải là nhân vật lịch sử sáng lập đạo.',
                        style: TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 15,
                          height: 1.3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE8C17D), width: 1.5),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFE8C17D),
                        size: 26,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE8C17D), width: 2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'Câu 1',
                      style: TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFE8C17D), width: 1.5),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFE8C17D),
                        size: 26,
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
