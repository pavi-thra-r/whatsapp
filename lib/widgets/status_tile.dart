import 'package:flutter/material.dart';

class MyStatusTile extends StatelessWidget {
  const MyStatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: Stack(
        children: const [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, color: Colors.white),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              child: Icon(Icons.add, size: 15, color: Colors.white),
            ),
          ),
        ],
      ),
      title: const Text("My Status", style: TextStyle(color: Colors.white)),
      subtitle: const Text("Tap to add status update", style: TextStyle(color: Colors.white54)),
      onTap: () {},
    );
  }
}

class StatusTile extends StatelessWidget {
  final String name;
  final String time;

  const StatusTile({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.green,
        child: Text(
          name[0],
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(name, style: const TextStyle(color: Colors.white)),
      subtitle: Text(time, style: const TextStyle(color: Colors.white54)),
      onTap: () {},
    );
  }
}

// Remove this if using SectionTitle from section_tile.dart
class StatusSectionTitle extends StatelessWidget {
  final String title;

  const StatusSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
      ),
    );
  }
}
