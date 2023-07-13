import 'package:chat_ui/screens/chat_screen.dart';
import 'package:chat_ui/screens/home_screen.dart';
import 'package:chat_ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Ui',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/chat', page: () => const ChatScreen()),
        GetPage(name: '/settings', page: () => const SettingsScreen()),
      ],
    );
  }
}
