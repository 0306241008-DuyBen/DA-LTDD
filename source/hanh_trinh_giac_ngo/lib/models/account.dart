class Account {
  int id;
  String username;
  String password;
  String displayName;
  bool isAdmin;
  int score;
  DateTime? lastOnline;

  Account({
    required this.id,
    required this.username,
    required this.password,
    required this.displayName,
    this.isAdmin = false,
    this.score = 0,
    this.lastOnline,
  });
}