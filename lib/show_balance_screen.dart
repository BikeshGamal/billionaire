import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ShowBalanceScreen extends StatelessWidget {
  final double balance;
  ShowBalanceScreen({required this.balance, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bank Balance:"),
            SizedBox(
              height: 20,
            ),
            Text(
              "\$ ${NumberFormat.simpleCurrency(name: "").format(balance)}",
              style: TextStyle(fontSize: 45),
            )
          ],
        ),
      ),
    );
  }
}
