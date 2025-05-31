import 'package:flutter/material.dart';

import '../widgets/status_tile.dart';
import '../widgets/section_tile.dart';



class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const MyStatusTile(),
        const Divider(color: Colors.white24),
        const SectionTitle(title: 'Recent updates'),
        const StatusTile(name: "Aarav Mehta", time: "Today, 10:45 AM"),
        const StatusTile(name: "Diya Patel", time: "Today, 9:20 AM"),
        const Divider(color: Colors.white24),
        const SectionTitle(title: 'Viewed updates'),
        const StatusTile(name: "Kabir Sharma", time: "Yesterday, 8:00 PM"),
      ],
    );
  }
}
