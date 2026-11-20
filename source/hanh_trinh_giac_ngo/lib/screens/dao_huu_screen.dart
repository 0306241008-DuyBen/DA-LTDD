import 'package:flutter/material.dart';

class DaoHuuScreen extends StatefulWidget {
  const DaoHuuScreen({super.key});

  @override
  State<DaoHuuScreen> createState() => _DaoHuuScreenState();
}

class _DaoHuuScreenState extends State<DaoHuuScreen> {
  int selectedTab = 0;
  void changeTab(int tab) {
    if (selectedTab != tab) {
      setState(() {
        selectedTab = tab;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Đạo Hữu',
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => changeTab(0),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF956429),
                      foregroundColor: Color(0xFFE8C17D),
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                      ),
                    ),
                    child: Text(
                      'Đạo hữu',
                      style: TextStyle(color: Color(0xFFE8C17D), fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => changeTab(1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF956429),
                      foregroundColor: Color(0xFFE8C17D),
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                      ),
                    ),
                    child: Text(
                      'Lời mời',
                      style: TextStyle(color: Color(0xFFE8C17D), fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 42,
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Nhập tên đạo hữu...',
                        hintStyle: TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF956429),
                      foregroundColor: Color(0xFFE8C17D),
                      shadowColor: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Color(0xFFE8C17D), width: 2),
                      ),
                    ),
                    child: Text(
                      'Thêm',
                      style: TextStyle(color: Color(0xFFE8C17D), fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE8C17D), width: 2),
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF956429),
                ),
                child: ListView(
                  children: [
                    if (selectedTab == 0) ...[
                      for (int i = 1; i <= 15; i++)
                        Card(
                          color: Color(0xFF956429),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: Color(0xFFE8C17D),
                              width: 2.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              left: 15,
                              right: 15,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Đạo hữu $i',
                                      style: TextStyle(
                                        color: Color(0xFFE8C17D),
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Điểm: $i',
                                      style: TextStyle(
                                        color: Color(0xFFE8C17D),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
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
                                  child: Text('Xóa'),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ] else if (selectedTab == 1) ...[
                      for (int i = 1; i <= 5; i++)
                        Card(
                          color: Color(0xFF956429),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: Color(0xFFE8C17D),
                              width: 2.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              left: 15,
                              right: 15,
                              bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Lời mời $i',
                                    style: TextStyle(
                                      color: Color(0xFFE8C17D),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF956429),
                                        foregroundColor: Color(0xFFE8C17D),
                                        shadowColor: Colors.black,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          side: BorderSide(
                                            color: Color(0xFFE8C17D),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Đồng ý',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          side: BorderSide(
                                            color: Color(0xFFE8C17D),
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Từ chối',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
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
