import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
        body: Column(
          children: [
            const Column(
              children: [
                Text('Text 1'),
                Text('Text 2'),
                Text('Text 3'),
              ],
            ),
            const Row(
              children: [
                Text('Text 1'),
                Text('Text 2'),
                Text('Text 4'),
              ],
            ),
            Stack(
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
                Container(color: Colors.green, width: 30, height: 30),
              ],
            ),
            // Expanded(
            //   child: ListView(
            //     children: const [
            //       ListTile(
            //         title: Text('Item 1'),
            //       ),
            //       ListTile(
            //         title: Text('Item 2'),
            //       ),
            //     ],
            //   ),
            // ),
            const Wrap(
              direction: Axis.horizontal,
              children: [
                Chip(label: Text('Chip 1')),
                Chip(label: Text('Chip 2')),
              ],
            ),

            const Flex(
              direction: Axis.horizontal,
              children: [
                Chip(label: Text('Chip 1')),
                Chip(label: Text('Chip 2')),
              ],
            ),

            Table(
              children: const [
                TableRow(
                    children: [Text('Row 1, Col 1'), Text('Row 1, Col 2')]),
                TableRow(
                    children: [Text('Row 2, Col 1'), Text('Row 2, Col 2')]),
              ],
            ),
          ],
        ));
  }
}
