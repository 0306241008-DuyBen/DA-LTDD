import 'package:material_ui/material_ui.dart';

class ChiTietDeScreen extends StatelessWidget {
  final int deSo;
  final String chuDe;
  final String doKho;
  final int soCauHoi;
  final int thoiGian;
  final String moTa;

  const ChiTietDeScreen({
    super.key,
    required this.deSo,
    required this.chuDe,
    required this.doKho,
    required this.soCauHoi,
    required this.thoiGian,
    required this.moTa,
  });

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
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Đề $deSo",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFE8C17D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(3),

                child: Card(
                  color: Color(0xFF6B4320),
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
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: Color(0xFF956429),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.sell, color: Color(0xFFE8C17D)),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chủ đề",
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                chuDe,
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(3),

                child: Card(
                  color: Color(0xFF6B4320),
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
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: Color(0xFF956429),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.speed, color: Color(0xFFE8C17D)),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Độ khó",
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                doKho,
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //So cau hoi va thoi gian
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(3),

                      child: Card(
                        color: Color(0xFF6B4320),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2.5,
                          ),
                        ),
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 5,
                            bottom: 5,
                          ),

                          child: Column(
                            children: [
                              Text(
                                "Số câu hỏi",
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "${soCauHoi.toString()} câu",
                                style: TextStyle(
                                  color: Color(0xFFE8C17D),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(3),
                      child: SizedBox(
                        child: Card(
                          color: Color(0xFF6B4320),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: Color(0xFFE8C17D),
                              width: 2.5,
                            ),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 5,
                              bottom: 5,
                            ),

                            child: Column(
                              children: [
                                Text(
                                  "Thời gian",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "${thoiGian.toString()} phút",
                                  style: TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Text(
                  "Mô tả",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFE8C17D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Text(
                  moTa,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFE8C17D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26, right: 26, top: 8, bottom: 20),
          child: SizedBox(
            width: double.maxFinite,
            height: 70,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE8C17D),
                foregroundColor: Color(0xFFE8C17D),
                shadowColor: Colors.black,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                ),
              ),
              child: Text(
                'BẮT ĐẦU LÀM',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
