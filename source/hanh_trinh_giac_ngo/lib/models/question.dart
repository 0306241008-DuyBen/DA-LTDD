class Question {
  int id;
  String content;
  String? description;
  int bodeId;

  Question({
    required this.id,
    required this.content,
    this.description,
    required this.bodeId,
  });
}