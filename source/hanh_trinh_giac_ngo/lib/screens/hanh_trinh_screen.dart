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
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
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
              for (int i = 1; i <= 15; i++)
                Padding(
                  padding: EdgeInsetsGeometry.all(3),
                  child: Card(
                    color: Color(0xFF956429),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Color(0xFFE8C17D), width: 2.5),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chủ đề: Nhân Quả",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "Đề #$i",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Độ khó: Dễ",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Điểm ghi được: 25",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF956429),
                              foregroundColor: Color(0xFFE8C17D),
                              shadowColor: Colors.black,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Color(0xFFE8C17D),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              'Xem',
                              style: TextStyle(
                                color: Color(0xFFE8C17D),
                                fontSize: 20,
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
        ),
      ),
    );
  }
}
