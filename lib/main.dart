import 'package:flutter/material.dart';

void main() => runApp(const IsaacApp());

class IsaacApp extends StatelessWidget {
  const IsaacApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Isaac App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Kizito';

  void makeActive(String activeStudent) {
    setState(() => name = activeStudent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Active Student's App")),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.purple,
              padding: const EdgeInsets.all(24.0),
              margin: const EdgeInsets.all(16.0),
              child: const Text(
                'Hello Everyone!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              '$name is currently active',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => makeActive('Kizito'),
                  child: const Text('Kizito'),
                ),
                ElevatedButton(
                  onPressed: () => makeActive('Uche'),
                  child: const Text('Uche'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => makeActive('Chibuike'),
                  child: const Text('ChibuIke'),
                ),
                ElevatedButton(
                  onPressed: () => makeActive('Raymond'),
                  child: const Text('Raymond'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
