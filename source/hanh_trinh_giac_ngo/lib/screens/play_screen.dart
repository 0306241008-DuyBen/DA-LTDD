import 'package:hanh_trinh_giac_ngo/models/chude.dart';
import 'package:material_ui/material_ui.dart';

class PlayScreen extends StatefulWidget {
  final int deSo;
  final String chuDe;
  const PlayScreen({super.key, required this.deSo, required this.chuDe});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int selectedIndex = -1; //mac dinh chua chon
  Widget taoButton(index, noiDung) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedIndex == index
            ? Color(0xFF1E9A47)
            : Color(0xFF956429),
        foregroundColor: Color(0xFF956429),
        elevation: 4,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xFFE8C17D), width: 2),
        ),
      ),
      child: Text(
        '$noiDung',
        style: TextStyle(
          color: Color(0xFFE8C17D),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Đề ${widget.deSo}',
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF956429),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFE8C17D), width: 2),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.chuDe,
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
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
                          child: taoButton(0, "A. Phật A Di Đà")
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: taoButton(1, "B. Phật Di Lặc")
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: taoButton(2, "C. Phật Thích Ca Mâu Ni")
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: taoButton(3, "D. Bồ Tát Quan Thế Âm")
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
