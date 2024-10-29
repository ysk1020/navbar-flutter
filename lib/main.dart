import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navbar/navigation/bottom_navbar.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navbar Pages',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(), // Set the home page as the initial route
    );
  }
}

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavBar(); // This uses the BottomNavBar which includes both your nav logic and screens
  }
}
