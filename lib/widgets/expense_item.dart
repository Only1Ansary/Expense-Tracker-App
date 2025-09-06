import '../models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          MediaQuery.of(context).size.width < 800
              ? Theme.of(context).cardTheme.margin
              : EdgeInsets.fromLTRB(0, 5, 60, 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleMedium),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Text(expense.formattedDate),
                    const SizedBox(width: 10),
                    Icon(categoryIcons[expense.category]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
