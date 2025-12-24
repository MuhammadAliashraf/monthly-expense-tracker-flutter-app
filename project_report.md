---
title: "Project Report: Monthly Expense Tracker"
author: "Antigravity AI"
date: "December 24, 2025"
---

# Project Report: Monthly Expense Tracker

## 1. Introduction
The **Monthly Expense Tracker** is a premium mobile and desktop application developed using the Flutter framework. It is designed to provide users with a seamless and visually appealing way to manage their personal finances, including income and expenses. The app focuses on simplicity, performance, and a modern aesthetic.

## 2. Key Features
- **Transaction Management**: Effortlessly log income and expenses with titles, amounts, and dates.
- **Categorization**: Transactions are organized into intuitive categories (e.g., Food, Transport, Bills, Health, Education) for better financial clarity.
- **Real-time Summaries**: Live calculations of Total Income, Total Expenses, and Net Balance.
- **Premium UI (Glassmorphism)**: A state-of-the-art design featuring dark mode, glass effects, and smooth animations.
- **Offline Reliability**: Powered by a robust SQLite database for local storage, ensuring data is always accessible without an internet connection.
- **Cross-Platform Support**: Optimized for both Android and Windows desktop environments.

## 3. Technical Stack
- **Framework**: [Flutter](https://flutter.dev/) (Material 3)
- **Programming Language**: Dart
- **Database**: [SQLite](https://sqlite.org/) (via `sqflite` and `sqflite_common_ffi`)
- **Key Packages**:
    - `path`: For file system path manipulation.
    - `intl`: For date and number formatting.
    - `google_fonts`: For modern typography.

## 4. Architecture & Structure
The project follows a modular architecture for scalability and maintainability:

- **`lib/models/`**: Defines the data structures for `Expense` and `Category`.
- **`lib/database/`**: Contains the `DatabaseHelper` class, managing all SQL operations (CRUD).
- **`lib/screens/`**: UI layers for the Dashboard (`HomeScreen`) and Entry Form (`AddExpenseScreen`).
- **`lib/widgets/`**: Reusable UI components like `ExpenseCard` and `SummaryCard`.
- **`lib/theme/`**: Centralized styling, including the dark theme and glassmorphism definitions.

## 5. Database Schema
The SQLite database (`expense_tracker.db`) consists of two primary tables:

### `categories`
- `id`: Primary Key (Integer)
- `name`: Category name (Text)
- `icon_code`: Material icon identifier (Integer)
- `color_value`: Hex color code (Integer)

### `expenses`
- `id`: Primary Key (Integer)
- `title`: Transaction title (Text)
- `amount`: Financial value (Real)
- `category_id`: Foreign Key referencing `categories` (Integer)
- `date`: Transaction date (ISO String)
- `type`: 'income' or 'expense' (Text)
- `description`: Optional notes (Text)

## 6. UI/UX Design
The application leverages **Material 3** and custom **Glassmorphism** styling. The "Glass Card" effect is achieved using `BackdropFilter` with blur and subtle gradients, creating a premium, modern feel that stands out from standard utility apps.

## 7. Future Roadmap
- **Data Visualization**: Interactive pie charts and bar graphs for spending trends.
- **Budgeting**: Setting monthly limits for specific categories.
- **Exporting**: Ability to export data to CSV or PDF for financial reviews.
- **Cloud Sync**: Optional synchronization across devices.

---
*Report generated for the Monthly Expense Tracker Project.*
