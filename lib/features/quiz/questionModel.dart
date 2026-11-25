class Questionmodel {
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String correctOpt;
  final String? questionImageUrl;
  final int questionMoney;

  Questionmodel({
    required this.question,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.correctOpt,
    this.questionImageUrl = "https://images.unsplash.com/photo-1778918027232-ee2527f92946?w=1920&h=1080&fit=crop&q=80",
    required this.questionMoney,
  });
}
