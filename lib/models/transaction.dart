class Transaction {
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  final double amount;
  final DateTime date;
  final String id;
  final String title;
}
