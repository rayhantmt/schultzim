class Transaction {
  final String title;
  final String date;
  final String amount;
  final String imageUrl;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
    required this.imageUrl,
  });



}
class MonthlyData {
  final String month;
  final double value;

  MonthlyData({required this.month, required this.value});
}
