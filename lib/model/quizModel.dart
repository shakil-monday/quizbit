class QuizModel {
  final String title;
  final String verticalThumbUrl;
  final String coverImageUrl;
  final int entryFees;
  final int level;
  final int playCount;
  final int prizeMoney;
  final String description;
  final List<String> categories;

  QuizModel({
    required this.title,
    required this.verticalThumbUrl,
    required this.coverImageUrl,
    required this.entryFees,
    required this.level,
    required this.playCount,
    required this.prizeMoney,
    required this.categories,
    required this.description,
  });
}
