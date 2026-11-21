import 'package:material_ui/material_ui.dart';

class ManHinhDoiMatKhau extends StatefulWidget {
  const ManHinhDoiMatKhau({super.key});

  @override
  State<ManHinhDoiMatKhau> createState() => _ManHinhDoiMatKhauState();
}

class _ManHinhDoiMatKhauState extends State<ManHinhDoiMatKhau> {
  final matKhauCu = TextEditingController();
  final matKhauMoi = TextEditingController();
  final nhapLai = TextEditingController();

  @override
  void dispose() {
    matKhauCu.dispose();
    matKhauMoi.dispose();
    nhapLai.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF966329),
      appBar: AppBar(
        backgroundColor: Color(0xFF956429),
        title: Text(
          'Thay đổi mật khẩu',
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
              'Nhập mật khẩu cũ:',
              style: TextStyle(
                color: Color(0xFFE6C88C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            oNhap(matKhauCu, 'Nhập mật khẩu cũ...'),

            const SizedBox(height: 15),

            const Text(
              'Nhập mật khẩu mới:',
              style: TextStyle(
                color: Color(0xFFE6C88C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            oNhap(matKhauMoi, 'Nhập mật khẩu mới...'),

            const SizedBox(height: 15),

            const Text(
              'Nhập lại mật khẩu mới:',
              style: TextStyle(
                color: Color(0xFFE6C88C),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            oNhap(nhapLai, 'Nhập lại mật khẩu mới...'),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (matKhauMoi.text.isEmpty || nhapLai.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Vui lòng nhập đầy đủ'), backgroundColor: Colors.red),
                    );
                  } else if (matKhauMoi.text != nhapLai.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Mật khẩu không khớp'), backgroundColor: Colors.red,),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Đổi mật khẩu thành công'), backgroundColor: Colors.green),
                    );
                    
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

  Widget oNhap(TextEditingController controller, String goiY) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        controller: controller,
        obscureText: true,
        style: const TextStyle(color: Color(0xFFE6C88C)),
        decoration: InputDecoration(
          hintText: goiY,
          hintStyle: TextStyle(color: Color(0xFFE6C88C)),
          fillColor: Color(0xFF966329),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFE6C88C)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFE6C88C), width: 2),
          ),
        ),
      ),
    );
  }
}
