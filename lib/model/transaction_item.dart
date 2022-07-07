class TransactionItem {
  String itemTitle;
  double amount;
  bool isExpense;

  TransactionItem(
      {required this.itemTitle, required this.amount, this.isExpense = true});
}
