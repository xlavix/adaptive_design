import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compact Bottom App Bar with FAB',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FAB(),
    );
  }
}

class FAB extends StatelessWidget {
  void _onFabPressed() {
    print('FAB tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Compact Bottom App Bar with FAB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, Farhan!',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => debugPrint('Home tapped'),
            ),
            IconButton(
              icon: const Icon(Icons.apple),
              onPressed: () => debugPrint('Apple tapped'),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => debugPrint('Profile tapped'),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => debugPrint('Settings tapped'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPressed,
        child: const Icon(Icons.add),
      ),
    );
  }
}