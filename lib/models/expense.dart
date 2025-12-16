class Expense {
  final int? id;
  final String title;
  final double amount;
  final int categoryId;
  final DateTime date;
  final String type; // 'income' or 'expense'
  final String? description;
  final DateTime createdAt;

  Expense({
    this.id,
    required this.title,
    required this.amount,
    required this.categoryId,
    required this.date,
    required this.type,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  bool get isIncome => type == 'income';
  bool get isExpense => type == 'expense';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'category_id': categoryId,
      'date': date.toIso8601String(),
      'type': type,
      'description': description,
      'created_at': createdAt.toIso8601String(),
    };
  }

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'],
      title: map['title'],
      amount: map['amount'],
      categoryId: map['category_id'],
      date: DateTime.parse(map['date']),
      type: map['type'],
      description: map['description'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  Expense copyWith({
    int? id,
    String? title,
    double? amount,
    int? categoryId,
    DateTime? date,
    String? type,
    String? description,
    DateTime? createdAt,
  }) {
    return Expense(
      id: id ?? this.id,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      categoryId: categoryId ?? this.categoryId,
      date: date ?? this.date,
      type: type ?? this.type,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
