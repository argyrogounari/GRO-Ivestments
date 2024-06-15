class SDGGoal {
  final int number;
  final String description;

  SDGGoal({required this.number, required this.description});
}

class Company {
  final int id;
  final String name;
  final double? percentage;

  Company({
    required this.id,
    required this.name,
    this.percentage,
  });
}

class UserChoices {
  int? investmentRisk;
  int? investmentExperience;
  int? investmentAmount;
  String? esgFocus;
  double? donationPercentage;
  bool? decideLater;

  UserChoices({
    this.investmentRisk,
    this.investmentExperience,
    this.investmentAmount,
    this.esgFocus,
    this.donationPercentage,
    this.decideLater,
  });
}

final List<SDGGoal> sdgGoals = [
  SDGGoal(number: 1, description: "No Poverty"),
  SDGGoal(number: 2, description: "Zero Hunger"),
  SDGGoal(number: 3, description: "Good Health and Well-being"),
  SDGGoal(number: 4, description: "Quality Education"),
  SDGGoal(number: 5, description: "Gender Equality"),
  SDGGoal(number: 6, description: "Clean Water and Sanitation"),
  SDGGoal(number: 7, description: "Affordable and Clean Energy"),
  SDGGoal(number: 8, description: "Decent Work and Economic Growth"),
  SDGGoal(number: 9, description: "Industry, Innovation, and Infrastructure"),
  SDGGoal(number: 10, description: "Reduced Inequality"),
  SDGGoal(number: 11, description: "Sustainable Cities and Communities"),
  SDGGoal(number: 12, description: "Responsible Consumption and Production"),
  SDGGoal(number: 13, description: "Climate Action"),
  SDGGoal(number: 14, description: "Life Below Water"),
  SDGGoal(number: 15, description: "Life on Land"),
  SDGGoal(number: 16, description: "Peace, Justice, and Strong Institutions"),
  SDGGoal(number: 17, description: "Partnerships for the Goals"),
];

final List<Company> companies = [
  Company(id: 0, name: "TSLA", percentage: 10),
  Company(id: 1, name: "NVDA", percentage: 7),
  Company(id: 2, name: "AAPL", percentage: 1),
  Company(id: 3, name: "MSFT", percentage: 1),
  Company(id: 4, name: "AMZN", percentage: 9),
  Company(id: 5, name: "FB", percentage: 5),
  Company(id: 6, name: "GOOGL", percentage: 6),
  Company(id: 7, name: "NFLX", percentage: 8),
  Company(id: 8, name: "BABA", percentage: 7),
  Company(id: 9, name: "V", percentage: 2),
  Company(id: 10, name: "JPM", percentage: 4),
  Company(id: 11, name: "JNJ", percentage: 3),
  Company(id: 12, name: "WMT", percentage: 5),
  Company(id: 13, name: "PG", percentage: 4),
  Company(id: 14, name: "DIS", percentage: 6),
  Company(id: 15, name: "MA", percentage: 3),
  Company(id: 16, name: "NVDA", percentage: 7),
  Company(id: 17, name: "HD", percentage: 4),
  Company(id: 18, name: "VZ", percentage: 2),
  Company(id: 19, name: "PYPL", percentage: 6),
  Company(id: 20, name: "INTC", percentage: 5),
  Company(id: 21, name: "ADBE", percentage: 8),
  Company(id: 22, name: "CSCO", percentage: 4),
  Company(id: 23, name: "PEP", percentage: 3),
  Company(id: 24, name: "MRK", percentage: 2),
  Company(id: 25, name: "KO", percentage: 3),
  Company(id: 26, name: "PFE", percentage: 5),
  Company(id: 27, name: "XOM", percentage: 7),
  Company(id: 28, name: "ORCL", percentage: 4),
  Company(id: 29, name: "NFLX", percentage: 8),
  Company(id: 30, name: "T", percentage: 6),
  Company(id: 31, name: "CMCSA", percentage: 4),
  Company(id: 32, name: "CVX", percentage: 5),
  Company(id: 33, name: "ABT", percentage: 3),
  Company(id: 34, name: "NKE", percentage: 6),
  Company(id: 35, name: "MCD", percentage: 4),
  Company(id: 36, name: "COST", percentage: 2),
  Company(id: 37, name: "DHR", percentage: 3),
  Company(id: 38, name: "TXN", percentage: 4),
  Company(id: 39, name: "MDT", percentage: 5),
  Company(id: 40, name: "BA", percentage: 6),
  Company(id: 41, name: "UNH", percentage: 3),
  Company(id: 42, name: "WFC", percentage: 4),
  Company(id: 43, name: "HON", percentage: 3),
  Company(id: 44, name: "C", percentage: 2),
  Company(id: 45, name: "PM", percentage: 5),
  Company(id: 46, name: "MMM", percentage: 4),
  Company(id: 47, name: "GE", percentage: 6),
  Company(id: 48, name: "IBM", percentage: 3),
];
