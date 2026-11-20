import 'package:hanh_trinh_giac_ngo/screens/sua_cau_hoi_screen.dart';
import 'package:hanh_trinh_giac_ngo/screens/them_cau_hoi_screen.dart';
import 'package:material_ui/material_ui.dart';

class QuanLyCauHoiScreen extends StatefulWidget {
  const QuanLyCauHoiScreen({super.key});

  @override
  State<QuanLyCauHoiScreen> createState() => _QuanLyCauHoiScreenState();
}

class _QuanLyCauHoiScreenState extends State<QuanLyCauHoiScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _tuKhoa = '';

  final _danhSachCauHoi = [
    {
      'topic': 'Nhân quả',
      'difficulty': 'Dễ',
      'question':
          'Ai là người đã sáng lập ra Đạo Phật (Phật giáo) trong lịch sử?',
      'answers': [
        'Phật A Di Đà',
        'Phật Di Lặc',
        'Phật Thích Ca Mâu Ni',
        'Bồ Tát Quan Thế Âm',
      ],
      'correctIndex': 2,
      'explanation':
          'Thái tử Tất Đạt Đa Cồ Đàm sau khi thành đạo dưới cội Bồ Đề được tôn xưng là Đức Phật Thích Ca Mâu Ni.',
    },
    {
      'topic': 'Lịch sử',
      'difficulty': 'Dễ',
      'question': 'Đức Phật Thích Ca Mâu Ni đản sinh tại đâu?',
      'answers': [
        'Vườn Lâm Tỳ Ni',
        'Bồ Đề Đạo Tràng',
        'Vườn Lộc Uyển',
        'Rừng Ta La',
      ],
      'correctIndex': 0,
      'explanation':
          'Đức Phật Thích Ca Mâu Ni đản sinh tại vườn Lâm Tỳ Ni (Nepal). Ba địa danh còn lại lần lượt là nơi Ngài thành đạo, thuyết pháp lần đầu và nhập Niết Bàn.',
    },
  ];

  // Mở màn hình Thêm câu hỏi
  Future<void> _moManHinhThem() async {
    final ketQua = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ThemCauHoiScreen()),
    );

    if (!mounted) return;
    if (ketQua is Map<String, Object>) {
      setState(() {
        _danhSachCauHoi.add(ketQua);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Đã thêm câu hỏi mới!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  // Mở màn hình Sửa câu hỏi
  Future<void> _moManHinhSua(int indexThucTe) async {
    final ketQua = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            SuaCauHoiScreen(cauHoi: _danhSachCauHoi[indexThucTe]),
      ),
    );

    if (!mounted) return;
    if (ketQua is Map<String, Object>) {
      setState(() {
        _danhSachCauHoi[indexThucTe] = ketQua;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Đã cập nhật câu hỏi!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final danhSachLoc = _danhSachCauHoi.where((item) {
      final cauHoi = item['question']?.toString() ?? '';
      return cauHoi.toLowerCase().contains(_tuKhoa.toLowerCase());
    }).toList();

    final danhSachChuCai = ['A', 'B', 'C', 'D'];

    return Scaffold(
      backgroundColor: const Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: const Color(0xFF956429),
        title: const Text(
          'NGÂN HÀNG CÂU HỎI',
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
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Ô tìm kiếm câu hỏi
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _tuKhoa = value;
                });
              },
              style: const TextStyle(color: Color(0xFFE8C17D), fontSize: 16),
              decoration: InputDecoration(
                hintText: 'Tìm kiếm câu hỏi...',
                hintStyle: const TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 14,
                ),
                suffixIcon: const Icon(Icons.search, color: Color(0xFFE8C17D)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
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
            const SizedBox(height: 12),

            // Danh sách thẻ câu hỏi
            Expanded(
              child: danhSachLoc.isEmpty
                  ? const Center(
                      child: Text(
                        'Không tìm thấy câu hỏi nào',
                        style: TextStyle(
                          color: Color(0xFFE8C17D),
                          fontSize: 16,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: danhSachLoc.length,
                      itemBuilder: (context, index) {
                        final item = danhSachLoc[index];
                        final indexThucTe = _danhSachCauHoi.indexOf(item);
                        final rawAnswers = item['answers'];
                        final answers = rawAnswers is Iterable
                            ? rawAnswers.map((e) => e.toString()).toList()
                            : <String>[];
                        final correctIndex =
                            (item['correctIndex'] as int?) ?? 0;

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
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Dòng tiêu đề + Nút Sửa / Xóa
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Câu hỏi ${indexThucTe + 1}:',
                                      style: const TextStyle(
                                        color: Color(0xFFE8C17D),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              _moManHinhSua(indexThucTe);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFF956429,
                                              ),
                                              foregroundColor: const Color(
                                                0xFFE8C17D,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                          height: 28,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFF956429,
                                              ),
                                              foregroundColor: const Color(
                                                0xFFE8C17D,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                const SizedBox(height: 6),

                                // Nội dung câu hỏi
                                Text(
                                  item['question']?.toString() ?? '',
                                  style: const TextStyle(
                                    color: Color(0xFFE8C17D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),

                                // 4 đáp án A, B, C, D
                                for (int i = 0; i < answers.length; i++)
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 6),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: i == correctIndex
                                          ? Colors.green
                                          : const Color(0xFF956429),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: const Color(0xFFE8C17D),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Text(
                                      '${danhSachChuCai[i]}. ${answers[i]}',
                                      style: TextStyle(
                                        color: i == correctIndex
                                            ? Colors.white
                                            : const Color(0xFFE8C17D),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 8),

            // Nút thêm câu hỏi dưới đáy màn hình
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: _moManHinhThem,
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
                  'THÊM CÂU HỎI/CÂU TRẢ LỜI',
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
      ),
    );
  }
}