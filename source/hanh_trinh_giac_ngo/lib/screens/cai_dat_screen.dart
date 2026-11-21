import 'package:hanh_trinh_giac_ngo/screens/change_password_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/change_name.screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/quan_ly_tai_khoan_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/welcome_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/quan_ly_cau_hoi_screen.dart';
import 'package:material_ui/material_ui.dart';

class CaiDatScreen extends StatefulWidget {
  final bool isAdmin;

  const CaiDatScreen({super.key, this.isAdmin = true});

  @override
  State<CaiDatScreen> createState() => _CaiDatScreenState();
}

class _CaiDatScreenState extends State<CaiDatScreen> {
  late bool _isAdmin;
  bool _nhacNenBat = true;

  @override
  void initState() {
    super.initState();
    _isAdmin = widget.isAdmin;
  }

  Widget _buildSettingBox({required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF956429),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE8C17D), width: 2),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 3)),
        ],
      ),
      child: child,
    );
  }

  Widget _buildSmallButton({
    required String label,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 34,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF956429),
          foregroundColor: const Color(0xFFE8C17D),
          elevation: 3,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFFE8C17D), width: 1.5),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Color(0xFFE8C17D),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: const Color(0xFF956429),
        title: const Text(
          'CÀI ĐẶT',
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
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isAdmin = !_isAdmin;
              });
            },
            child: Text(
              _isAdmin ? 'Admin' : 'User',
              style: const TextStyle(
                color: Color(0xFFE8C17D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            if (!_isAdmin)
              _buildSettingBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tên Hiển Thị',
                          style: TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Minh Tuệ',
                          style: TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    _buildSmallButton(
                      label: 'Thay đổi',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ManHinhDoiTen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManHinhDoiMatKhau()),
                );
              },
              child: _buildSettingBox(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Đổi mật khẩu',
                      style: TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFE8C17D),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),

            _buildSettingBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nhạc Nền',
                    style: TextStyle(
                      color: Color(0xFFE8C17D),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildSmallButton(
                    label: _nhacNenBat ? 'Bật' : 'Tắt',
                    onPressed: () {
                      setState(() {
                        _nhacNenBat = !_nhacNenBat;
                      });
                    },
                  ),
                ],
              ),
            ),

            if (_isAdmin) ...[
              _buildSettingBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Quản lý tài khoản',
                      style: TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    _buildSmallButton(
                      label: 'Vào',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuanLyTaiKhoanScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              _buildSettingBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Quản lý câu hỏi',
                      style: TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    _buildSmallButton(
                      label: 'Vào',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuanLyCauHoiScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF956429),
                  foregroundColor: const Color(0xFFE8C17D),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Color(0xFFE8C17D), width: 2),
                  ),
                ),
                child: const Text(
                  'ĐĂNG XUẤT',
                  style: TextStyle(
                    color: Color(0xFFE8C17D),
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
