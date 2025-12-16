import 'package:flutter/material.dart';

class ExpenseCategory {
  final int? id;
  final String name;
  final int iconCode;
  final int colorValue;

  ExpenseCategory({
    this.id,
    required this.name,
    required this.iconCode,
    required this.colorValue,
  });

  IconData get icon => IconData(iconCode, fontFamily: 'MaterialIcons');
  Color get color => Color(colorValue);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'icon_code': iconCode,
      'color_value': colorValue,
    };
  }

  factory ExpenseCategory.fromMap(Map<String, dynamic> map) {
    return ExpenseCategory(
      id: map['id'],
      name: map['name'],
      iconCode: map['icon_code'],
      colorValue: map['color_value'],
    );
  }

  // Predefined categories
  static List<ExpenseCategory> getDefaultCategories() {
    return [
      ExpenseCategory(
        name: 'Food',
        iconCode: Icons.restaurant.codePoint,
        colorValue: Colors.orange.value,
      ),
      ExpenseCategory(
        name: 'Transport',
        iconCode: Icons.directions_car.codePoint,
        colorValue: Colors.blue.value,
      ),
      ExpenseCategory(
        name: 'Shopping',
        iconCode: Icons.shopping_bag.codePoint,
        colorValue: Colors.purple.value,
      ),
      ExpenseCategory(
        name: 'Bills',
        iconCode: Icons.receipt_long.codePoint,
        colorValue: Colors.red.value,
      ),
      ExpenseCategory(
        name: 'Entertainment',
        iconCode: Icons.movie.codePoint,
        colorValue: Colors.pink.value,
      ),
      ExpenseCategory(
        name: 'Health',
        iconCode: Icons.local_hospital.codePoint,
        colorValue: Colors.green.value,
      ),
      ExpenseCategory(
        name: 'Education',
        iconCode: Icons.school.codePoint,
        colorValue: Colors.indigo.value,
      ),
      ExpenseCategory(
        name: 'Salary',
        iconCode: Icons.account_balance_wallet.codePoint,
        colorValue: Colors.teal.value,
      ),
      ExpenseCategory(
        name: 'Other',
        iconCode: Icons.more_horiz.codePoint,
        colorValue: Colors.grey.value,
      ),
    ];
  }
}
