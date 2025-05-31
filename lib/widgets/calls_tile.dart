import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String time;
  final bool isIncoming;

  const CallTile({
    super.key,
    required this.name,
    required this.time,
    this.isIncoming = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.teal,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name, style: const TextStyle(color: Colors.white)),
      subtitle: Row(
        children: [
          Icon(
            isIncoming ? Icons.call_received : Icons.call_made,
            color: isIncoming ? Colors.red : Colors.green,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(time, style: const TextStyle(color: Colors.white54)),
        ],
      ),
      trailing: const Icon(Icons.call, color: Colors.teal),
    );
  }
}
