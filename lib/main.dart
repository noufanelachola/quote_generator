import 'package:flutter/material.dart';

void main() {
  runApp(DailyQuotesApp());
}

class DailyQuotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Quotes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuotesHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuotesHomePage extends StatefulWidget {
  @override
  _QuotesHomePageState createState() => _QuotesHomePageState();
}

class _QuotesHomePageState extends State<QuotesHomePage> {
  final List<String> quotes = [
    "Believe you can and you're halfway there.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "What we think, we become.",
  ];

  int currentIndex = 0;

  void showNextQuote() {
    setState(() {
      currentIndex = (currentIndex + 1) % quotes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Quotes"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quotes[currentIndex],
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: showNextQuote,
                child: Text("New Quote"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
