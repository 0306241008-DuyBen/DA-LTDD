import 'package:material_ui/material_ui.dart';

class ManHinhDoiTen extends StatefulWidget {
  const ManHinhDoiTen({super.key});

  @override
  State<ManHinhDoiTen> createState() => _ManHinhDoiTenState();
}

class _ManHinhDoiTenState extends State<ManHinhDoiTen> {
  final TextEditingController ten = TextEditingController();

  @override
  void dispose() {
    ten.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF966329),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Thay đổi tên',
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tên hiển thị:',
              style: TextStyle(
                color: Color(0xFFE6C88C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: ten,
              style: const TextStyle(color: Color(0xFFE6C88C)),
              decoration: InputDecoration(
                hintText: 'Nhập tên mới...',
                hintStyle: TextStyle(color: Color(0xFFE6C88C)),
                filled: true,
                fillColor: Color(0xFF966329),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFE6C88C)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFFE6C88C),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (ten.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Vui lòng nhập tên')),
                    );
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Đã lưu tên')));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF966329),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Color(0xFFE8C17D),
                      width: 1.5,
                    ),
                  ),
                ),
                child: const Text(
                  'LƯU',
                  style: TextStyle(
                    color: Color(0xFFE6C88C),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
