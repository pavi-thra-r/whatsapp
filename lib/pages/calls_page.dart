import 'package:flutter/material.dart';
import '../widgets/calls_tile.dart'; // ✅ Correct import

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallTile(name: "Aarav Mehta", time: "Today, 10:30 AM", isIncoming: true),
        CallTile(name: "Kabir Sharma", time: "Monday, 3:15 PM", isIncoming: false),
      ],
    );
  }
}