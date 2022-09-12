class Detail{
  final String name;
  final String title;
  final String text;
  final String img;
  final String? time;
  final String prize;

  Detail({
    required this.name,
    required this.title,
    required this.text,
    required this.img,
    this.time,
    required this.prize
  });
}
