# Monthly Expense Tracker

A premium Flutter application for tracking monthly expenses and income, featuring a modern glassmorphism UI, robust SQLite database, and detailed financial analytics.

## 📱 Features

- **Expense & Income Tracking**: Easily add, edit, and delete transactions.
- **Monthly Summary**: View total income, expenses, and net balance.
- **Categorization**: Organize finances with predefined categories (Food, Transport, Bills, etc.).
- **Statistics**: (Coming soon) Visualize spending habits with charts.
- **Premium UI**: Dark mode design with smooth animations and glass effects.
- **Offline Support**: All data is stored locally using SQLite.

## 💾 Database Information

The application uses **SQLite** for robust local data storage.

- **Database Engine**: [sqflite](https://pub.dev/packages/sqflite)
- **Location**:
  - **Android**: `/data/data/com.example.expense_app/databases/expense_tracker.db` (internal app storage)
  - **Windows**: `%LOCALAPPDATA%\expense_app\expense_tracker.db` (or similar user document path depending on installation)
- **Schema**:
  - `categories`: Stores category definitions, icons, and colors.
  - `expenses`: Stores transaction details (title, amount, date, type).

The database helper class is located at: `lib/database/database_helper.dart`.

## 🚀 How to Run

### Prerequisites
- Flutter SDK (latest stable version)
- **Android**: Android Studio with an emulator or a physical device.
- **Windows**: Visual Studio 2022 with "Desktop development with C++" workload (required for native plugins).

### Steps
1.  **Clone/Open the project**:
    ```bash
    cd d:\Muhammad-Ali\flutter\expense_app
    ```

2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```

3.  **Run the application**:
    
    **For Android (Recommended):**
    Ensure an emulator is running or device is connected.
    ```bash
    flutter run
    ```
    
    **For Windows:**
    Ensure Developer Mode is enabled in Windows Settings.
    ```bash
    flutter run -d windows
    ```

## 📂 Project Structure

- `lib/main.dart`: Entry point, sets up the app theme and database initialization.
- `lib/database/`: Contains `database_helper.dart` for all SQL operations.
- `lib/models/`: Data models (`Expense`, `Category`).
- `lib/screens/`: 
  - `home_screen.dart`: Main dashboard with transaction list.
  - `add_expense_screen.dart`: Form for adding/editing transactions.
- `lib/widgets/`: Reusable UI components (`ExpenseCard`, `SummaryCard`).
- `lib/theme/`: App styling and color palette definitions.

## 🧪 Testing

The project includes unit tests for verifying core business logic.

To run tests:
```bash
flutter test
```
