import 'package:billionaire_app/add_button.dart';
import 'package:billionaire_app/show_balance_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double balance = 0;
  void addMoney() async {
    setState(() {
      balance = balance + 500;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
  }

  @override
  void initState() {
    readMoney();
    super.initState();
  }

  void readMoney() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Billionaire App"),
      ),
      body: Column(
        children: [
          ShowBalanceScreen(
            balance: balance,
          ),
          AddButton(
            addMoney: addMoney,
          )
        ],
      ),
    );
  }
}
