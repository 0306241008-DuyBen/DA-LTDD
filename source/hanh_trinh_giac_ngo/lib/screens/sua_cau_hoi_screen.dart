import 'package:material_ui/material_ui.dart';

class SuaCauHoiScreen extends StatefulWidget {
  final Map<String, Object> cauHoi;

  const SuaCauHoiScreen({super.key, required this.cauHoi});

  @override
  State<SuaCauHoiScreen> createState() => _SuaCauHoiScreenState();
}

class _SuaCauHoiScreenState extends State<SuaCauHoiScreen> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _explanationController = TextEditingController();
  final _answerControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  String _selectedTopic = 'Nhân quả';
  String _selectedDifficulty = 'Dễ';
  int _correctIndex = 0;

  final _topics = [
    'Nhân quả',
    'Cuộc đời Đức Phật',
    'Giáo lý căn bản',
    'Văn hóa & Lễ nghi',
  ];
  final _difficulties = ['Dễ', 'Trung bình', 'Khó'];

  @override
  void initState() {
    super.initState();
    final topic = widget.cauHoi['topic']?.toString() ?? 'Nhân quả';
    final difficulty = widget.cauHoi['difficulty']?.toString() ?? 'Dễ';
    _selectedTopic = _topics.contains(topic) ? topic : _topics[0];
    _selectedDifficulty = _difficulties.contains(difficulty)
        ? difficulty
        : _difficulties[0];

    _questionController.text = widget.cauHoi['question']?.toString() ?? '';
    _explanationController.text =
        widget.cauHoi['explanation']?.toString() ?? '';
    _correctIndex = (widget.cauHoi['correctIndex'] as int?) ?? 0;

    final rawAnswers = widget.cauHoi['answers'];
    if (rawAnswers is Iterable) {
      final answers = rawAnswers.map((e) => e.toString()).toList();
      for (int i = 0; i < 4 && i < answers.length; i++) {
        _answerControllers[i].text = answers[i];
      }
    }
  }

  void _capNhatCauHoi() {
    if (_questionController.text.trim().isEmpty ||
        _answerControllers.any((c) => c.text.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng không để trống câu hỏi hoặc đáp án!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final cauHoiDaSua = <String, Object>{
      'topic': _selectedTopic,
      'difficulty': _selectedDifficulty,
      'question': _questionController.text.trim(),
      'answers': _answerControllers.map((c) => c.text.trim()).toList(),
      'correctIndex': _correctIndex,
      'explanation': _explanationController.text.trim(),
    };

    Navigator.pop(context, cauHoiDaSua);
  }

  @override
  void dispose() {
    _questionController.dispose();
    _explanationController.dispose();
    for (final controller in _answerControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final nhanDapAn = ['A', 'B', 'C', 'D'];

    return Scaffold(
      backgroundColor: const Color(0xFF956429),
      appBar: AppBar(
        backgroundColor: const Color(0xFF956429),
        title: const Text(
          'Sửa Câu Hỏi',
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hàng chọn Chủ đề và Độ khó
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 6),
                        child: Text(
                          'Chủ đề:',
                          style: TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFFE8C17D),
                            width: 1.5,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedTopic,
                            focusColor: Colors.transparent,
                            dropdownColor: const Color(0xFF956429),
                            iconEnabledColor: const Color(0xFFE8C17D),
                            style: const TextStyle(
                              color: Color(0xFFE8C17D),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            items: _topics.map((topic) {
                              return DropdownMenuItem<String>(
                                value: topic,
                                child: Text(topic),
                              );
                            }).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() {
                                  _selectedTopic = value;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 6),
                        child: Text(
                          'Độ khó:',
                          style: TextStyle(
                            color: Color(0xFFE8C17D),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFFE8C17D),
                            width: 1.5,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _selectedDifficulty,
                            focusColor: Colors.transparent,
                            dropdownColor: const Color(0xFF956429),
                            iconEnabledColor: const Color(0xFFE8C17D),
                            style: const TextStyle(
                              color: Color(0xFFE8C17D),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            items: _difficulties.map((diff) {
                              return DropdownMenuItem<String>(
                                value: diff,
                                child: Text(diff),
                              );
                            }).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                setState(() {
                                  _selectedDifficulty = value;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Nội dung câu hỏi
              const Text(
                'Nội Dung Câu Hỏi:',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _questionController,
                maxLines: 3,
                style: const TextStyle(color: Color(0xFFE8C17D)),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE8C17D),
                      width: 1.5,
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
              const SizedBox(height: 16),

              // 4 đáp án
              const Text(
                'Các Câu Trả Lời (Chọn Đáp Án Đúng)',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              for (int i = 0; i < 4; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _correctIndex = i;
                          });
                        },
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _correctIndex == i
                                ? Colors.green
                                : Colors.transparent,
                            border: Border.all(
                              color: const Color(0xFFE8C17D),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _answerControllers[i],
                          style: TextStyle(
                            color: _correctIndex == i
                                ? Colors.white
                                : const Color(0xFFE8C17D),
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: _correctIndex == i
                                ? Colors.green
                                : const Color(0xFF956429),
                            prefixText: '${nhanDapAn[i]}. ',
                            prefixStyle: TextStyle(
                              color: _correctIndex == i
                                  ? Colors.white
                                  : const Color(0xFFE8C17D),
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFFE8C17D),
                                width: 1.5,
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
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 8),

              // Giải thích đáp án
              const Text(
                'Giải Thích Đáp Án:',
                style: TextStyle(
                  color: Color(0xFFE8C17D),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _explanationController,
                maxLines: 4,
                style: const TextStyle(color: Color(0xFFE8C17D)),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color(0xFFE8C17D),
                      width: 1.5,
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
              const SizedBox(height: 20),

              // Nút Hủy và Cập Nhật
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                          'HỦY',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: _capNhatCauHoi,
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
                          'CẬP NHẬT',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
