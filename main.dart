import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0014),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B0014),
        elevation: 0,
        title: const Text("Money Management"),
        actions: const [Icon(Icons.tune), SizedBox(width: 15)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Top Cards
            Row(
              children: [
                _card("STARTING", "৳5,000"),
                _card("CURRENT", "৳5,000", color: Colors.greenAccent),
              ],
            ),
            Row(
              children: [
                _card("STEP", "0 / 30"),
                _card("TARGET", "৳5,542,436", color: Colors.cyanAccent),
              ],
            ),

            const SizedBox(height: 15),

            // Wins / Loss / Next Stake
            Row(
              children: [
                _bigCard("WINS", "0", Colors.green),
                _bigCard("LOSSES", "0", Colors.red),
                _bigCard("NEXT STAKE", "৳96,742", Colors.pinkAccent),
              ],
            ),

            const SizedBox(height: 15),

            // Expected return
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Text("EXPECTED RETURN (IF WIN)",
                      style: TextStyle(color: Colors.white54)),
                  SizedBox(height: 5),
                  Text("+৳290,225",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {},
                    child: const Text("WIN"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {},
                    child: const Text("LOSS"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value, {Color? color}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(color: Colors.white54)),
            const SizedBox(height: 5),
            Text(value,
                style: TextStyle(
                    color: color ?? Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _bigCard(String title, String value, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(title, style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 5),
            Text(value,
                style: TextStyle(
                    color: color, fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
