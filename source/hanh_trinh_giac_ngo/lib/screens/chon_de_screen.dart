import 'package:hanh_trinh_giac_ngo/screens/chi_tiet_de.dart';
import 'package:material_ui/material_ui.dart';

class ChonDeScreen extends StatefulWidget {
  const ChonDeScreen({super.key});

  @override
  State<ChonDeScreen> createState() => _ChonDeScreenState();
}

class _ChonDeScreenState extends State<ChonDeScreen> {
  String do_kho = "Tất cả";
  List<String> danhSach = ["Tất cả", "Dễ", "Trung bình", "Khó"];
  String doKho(int i) {
    if (i % 2 == 0) {
      return "Dễ";
    }
    return "Trung bình";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'CHỌN ĐỀ',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 15, top: 5, bottom: 5),
                child: PopupMenuButton<String>(
                  position: PopupMenuPosition.over,
                  offset: Offset(120, 0),
                  color: Color(0xFF956429),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                  ),

                  elevation: 8,
                  onSelected: (value) {
                    setState(() {
                      do_kho = value;
                    });
                  },

                  itemBuilder: (context) {
                    return danhSach.map((item) {
                      return PopupMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(color: Color(0xFFE8C17D)),
                        ),
                      );
                    }).toList();
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF956429),

                      borderRadius: BorderRadius.circular(12),

                      border: Border.all(color: Color(0xFFE8C17D), width: 2),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Độ khó: $do_kho",
                          style: TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              for (int i = 1; i <= 15; i++)
                if (do_kho == "Tất cả" || do_kho == doKho(i))
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
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
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
                                    "Độ khó: ${doKho(i)}",
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChiTietDeScreen(
                                      deSo: i,
                                      chuDe: "Nhân Quả",
                                      doKho: doKho(i),
                                      soCauHoi: 20,
                                      thoiGian: 30,
                                      moTa:
                                          "Nhân quả là quy luật cho rằng mọi hành động, lời nói "
                                          "và suy nghĩ của con người đều có thể tạo ra những kết quả "
                                          "tương ứng. Gieo nhân thiện sẽ gặt quả lành, gieo nhân ác "
                                          "sẽ nhận quả xấu. Những việc làm hôm nay có thể ảnh hưởng "
                                          "đến cuộc sống của bản thân và những người xung quanh "
                                          "trong tương lai.",
                                    ),
                                  ),
                                );
                              },
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
                                'LÀM',
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
