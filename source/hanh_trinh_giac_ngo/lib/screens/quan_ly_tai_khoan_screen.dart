import 'package:material_ui/material_ui.dart';

class QuanLyTaiKhoanScreen extends StatefulWidget {
  const QuanLyTaiKhoanScreen({super.key});

  @override
  State<QuanLyTaiKhoanScreen> createState() => _QuanLyTaiKhoanScreenState();
}

class _QuanLyTaiKhoanScreenState extends State<QuanLyTaiKhoanScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _tuKhoa = '';

  final _danhSachNguoiDung = [
    {'name': 'Tô Phàm', 'rank': 'Tinh Anh I', 'points': '560'},
    {'name': 'Thiện Nhân', 'rank': 'Khai Tâm I', 'points': '220'},
    {'name': 'Trụ Trì', 'rank': 'Trụ Tâm I', 'points': '820'},
    {'name': 'Minh Tâm', 'rank': 'Giác Ngộ', 'points': '1,250'},
  ];

  // Danh sách các bậc hạng theo hệ thống 5 bậc
  final _danhSachBacHang = [
    {'value': 'Khai Tâm I', 'label': 'Bậc 1: Khai Tâm I'},
    {'value': 'Khai Tâm II', 'label': 'Bậc 1: Khai Tâm II'},
    {'value': 'Khai Tâm III', 'label': 'Bậc 1: Khai Tâm III'},
    {'value': 'Tinh Anh I', 'label': 'Bậc 2: Tinh Anh I'},
    {'value': 'Tinh Anh II', 'label': 'Bậc 2: Tinh Anh II'},
    {'value': 'Tinh Anh III', 'label': 'Bậc 2: Tinh Anh III'},
    {'value': 'Trụ Tâm I', 'label': 'Bậc 3: Trụ Tâm I'},
    {'value': 'Trụ Tâm II', 'label': 'Bậc 3: Trụ Tâm II'},
    {'value': 'Trụ Tâm III', 'label': 'Bậc 3: Trụ Tâm III'},
    {'value': 'Vô Lượng I', 'label': 'Bậc 4: Vô Lượng I'},
    {'value': 'Vô Lượng II', 'label': 'Bậc 4: Vô Lượng II'},
    {'value': 'Vô Lượng III', 'label': 'Bậc 4: Vô Lượng III'},
    {'value': 'Giác Ngộ', 'label': 'Bậc 5: Giác Ngộ'},
  ];

  // Popup Sửa tài khoản (có chọn Bậc Hạng)
  void _hienPopupSuaTaiKhoan(int indexThucTe) {
    final user = _danhSachNguoiDung[indexThucTe];
    final nameController = TextEditingController(text: user['name']);
    final pointsController = TextEditingController(text: user['points']);

    final hangHienTai = user['rank'] ?? 'Khai Tâm I';
    final hopLe = _danhSachBacHang.any((item) => item['value'] == hangHienTai);
    String selectedRank = hopLe ? hangHienTai : 'Khai Tâm I';

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setDialogState) {
            return Dialog(
              backgroundColor: const Color(0xFF956429),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFFE4BE77), width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'SỬA TÀI KHOẢN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE8C17D),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Ô nhập Tên hiển thị
                    TextField(
                      controller: nameController,
                      style: const TextStyle(color: Color(0xFFE8C17D)),
                      decoration: InputDecoration(
                        labelText: 'Tên hiển thị',
                        labelStyle: const TextStyle(color: Color(0xFFE8C17D)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Ô lựa chọn Bậc Hạng
                    InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Hạng',
                        labelStyle: const TextStyle(color: Color(0xFFE8C17D)),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                          ),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedRank,
                          isExpanded: true,
                          dropdownColor: const Color(0xFF956429),
                          iconEnabledColor: const Color(0xFFE8C17D),
                          style: const TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 15,
                          ),
                          items: _danhSachBacHang.map((hang) {
                            return DropdownMenuItem<String>(
                              value: hang['value'],
                              child: Text(hang['label'] ?? ''),
                            );
                          }).toList(),
                          onChanged: (value) {
                            if (value != null) {
                              setDialogState(() {
                                selectedRank = value;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Ô nhập Điểm Công Đức
                    TextField(
                      controller: pointsController,
                      style: const TextStyle(color: Color(0xFFE8C17D)),
                      decoration: InputDecoration(
                        labelText: 'Điểm Công Đức',
                        labelStyle: const TextStyle(color: Color(0xFFE8C17D)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Hàng nút Hủy / Lưu
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(dialogContext);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF956429),
                              foregroundColor: const Color(0xFFE8C17D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color(0xFFE8C17D),
                                ),
                              ),
                            ),
                            child: const Text('Hủy'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              if (nameController.text.trim().isEmpty) return;
                              setState(() {
                                _danhSachNguoiDung[indexThucTe] = {
                                  'name': nameController.text.trim(),
                                  'rank': selectedRank,
                                  'points': pointsController.text.trim(),
                                };
                              });
                              Navigator.pop(dialogContext);
                              ScaffoldMessenger.of(this.context).showSnackBar(
                                const SnackBar(
                                  content: Text('Đã cập nhật tài khoản!'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF956429),
                              foregroundColor: const Color(0xFFE8C17D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color(0xFFE8C17D),
                                ),
                              ),
                            ),
                            child: const Text('Lưu'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  // Popup Xác nhận xóa tài khoản
  void _hienPopupXoaTaiKhoan(int indexThucTe) {
    final tenNguoiDung = _danhSachNguoiDung[indexThucTe]['name'] ?? '';
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          backgroundColor: const Color(0xFF956429),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xFFE4BE77), width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'XÁC NHẬN XÓA',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE8C17D),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Bạn có chắc chắn muốn xóa tài khoản này?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE8C17D),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '"$tenNguoiDung"',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFFE8C17D),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hành động này không thể hoàn tác !',
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFFE8C17D),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(dialogContext);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF956429),
                          foregroundColor: const Color(0xFFE8C17D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Color(0xFFE8C17D),
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: const Text(
                          'HỦY',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _danhSachNguoiDung.removeAt(indexThucTe);
                          });
                          Navigator.pop(dialogContext);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Đã xóa tài khoản!'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'XÓA',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final danhSachLoc = _danhSachNguoiDung.where((user) {
      final ten = user['name'] ?? '';
      return ten.toLowerCase().contains(_tuKhoa.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: const Color(0xFF956429),
        title: const Text(
          'QUẢN LÝ TÀI KHOẢN',
          style: TextStyle(
            color: Color(0xFFE8C17D),
            fontSize: 22,
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            // Thanh tìm kiếm người dùng
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 42,
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) {
                        setState(() {
                          _tuKhoa = value;
                        });
                      },
                      style: const TextStyle(
                        color: Color(0xFFE8C17D),
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Tìm kiếm người dùng...',
                        hintStyle: const TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _tuKhoa = _searchController.text;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF956429),
                        foregroundColor: const Color(0xFFE8C17D),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0xFFE8C17D),
                            width: 2,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Tìm',
                        style: TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),

            // Danh sách người dùng
            Expanded(
              child: danhSachLoc.isEmpty
                  ? const Center(
                      child: Text(
                        'Không tìm thấy tài khoản nào',
                        style: TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 16,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: danhSachLoc.length,
                      itemBuilder: (context, index) {
                        final user = danhSachLoc[index];
                        final indexThucTe = _danhSachNguoiDung.indexOf(user);

                        return Card(
                          color: const Color(0xFF956429),
                          margin: const EdgeInsets.only(bottom: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: Color(0xFFE8C17D),
                              width: 2,
                            ),
                          ),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        user['name'] ?? '',
                                        style: const TextStyle(
                                          color: Color(0xFFE8C17D),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Hạng: ${user['rank']} - ${user['points']} Công Đức',
                                        style: const TextStyle(
                                          color: Color(0xFFE8C17D),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _hienPopupSuaTaiKhoan(indexThucTe);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF956429),
                                          foregroundColor:
                                              const Color(0xFFE8C17D),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            side: const BorderSide(
                                              color: Color(0xFFE8C17D),
                                              width: 1.5,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'Sửa',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    SizedBox(
                                      height: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _hienPopupXoaTaiKhoan(indexThucTe);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFF956429),
                                          foregroundColor:
                                              const Color(0xFFE8C17D),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            side: const BorderSide(
                                              color: Color(0xFFE8C17D),
                                              width: 1.5,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'Xóa',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}