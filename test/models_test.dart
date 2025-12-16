import 'package:flutter_test/flutter_test.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/models/category.dart';

void main() {
  group('Expense Model', () {
    test('should create expense from map', () {
      final date = DateTime.now();
      final map = {
        'id': 1,
        'title': 'Test Expense',
        'amount': 100.0,
        'category_id': 1,
        'date': date.toIso8601String(),
        'type': 'expense',
        'description': 'Test description',
        'created_at': date.toIso8601String(),
      };

      final expense = Expense.fromMap(map);

      expect(expense.id, 1);
      expect(expense.title, 'Test Expense');
      expect(expense.amount, 100.0);
      expect(expense.isExpense, true);
      expect(expense.isIncome, false);
    });

    test('should serialize to map', () {
      final date = DateTime.now();
      final expense = Expense(
        id: 1,
        title: 'Test',
        amount: 50.0,
        categoryId: 1,
        date: date,
        type: 'income',
      );

      final map = expense.toMap();

      expect(map['title'], 'Test');
      expect(map['amount'], 50.0);
      expect(map['type'], 'income');
    });
  });

  group('Category Model', () {
    test('should load default categories', () {
      final categories = ExpenseCategory.getDefaultCategories();
      expect(categories.isNotEmpty, true);
      expect(categories.any((c) => c.name == 'Food'), true);
    });
  });
}
