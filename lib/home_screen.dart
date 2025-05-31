import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'pages/updates_page.dart';
import 'pages/communities_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = const  [
  ChatsPage(),
  UpdatesPage(), // Add this line
  CommunitiesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF121B22),
        title: const Text('WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.qr_code_scanner), onPressed: () {}),
          IconButton(icon: const Icon(Icons.camera_alt_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: currentIndex == 0
            ? PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: Column(
                  children: const [
                    SearchBarWidget(),
                    TabBarRow(),
                  ],
                ),
              )
            : null,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: const Color(0xFF1F2C34),
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1F2C34),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.white54),
            contentPadding: EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
    );
  }
}

class TabBarRow extends StatelessWidget {
  const TabBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          tabButton('All'),
          tabButton('Unread'),
          tabButton('Favourites'),
          tabButton('Groups'),
          tabButton('SJBIT'),
        ],
      ),
    );
  }

  Widget tabButton(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: label == 'All' ? const Color(0xFF00A884) : Colors.transparent,
          border: Border.all(color: Colors.grey.shade700),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  final List<Map<String, dynamic>> chats = const [
    {
      "name": "Aarav Mehta",
      "message": "Hey, are we still on for tonight?",
      "status": "read",
      "time": "2025-05-30 10:45",
      "unread": 0
    },
    {
      "name": "Diya Patel",
      "message": "I'll send you the files shortly.",
      "status": "delivered",
      "time": "2025-05-30 08:12",
      "unread": 2
    },
    {
      "name": "Kabir Sharma",
      "message": "Where are you?",
      "status": "sent",
      "time": "2025-05-29 21:35",
      "unread": 1
    },
    {
      "name": "Isha Verma",
      "message": "Can we reschedule our meeting?",
      "status": "received",
      "time": "2025-05-28 18:15",
      "unread": 0
    },
    {
      "name": "Aryan Singh",
      "message": "Awesome! 😄",
      "status": "read",
      "time": "2025-05-30 09:15",
      "unread": 0
    },
    {
      "name": "Riya Nair",
      "message": "Meeting at 5 PM, don’t forget!",
      "status": "delivered",
      "time": "2025-05-27 14:00",
      "unread": 3
    },
    {
      "name": "Saanvi Reddy",
      "message": "Good morning! Have a great day!",
      "status": "read",
      "time": "2025-05-30 07:50",
      "unread": 0
    },
    {
      "name": "Yash Raj",
      "message": "Check the link I sent.",
      "status": "sent",
      "time": "2025-05-29 16:20",
      "unread": 1
    },
    {
      "name": "Neha Suresh",
      "message": "Happy Birthday! 🎉",
      "status": "received",
      "time": "2025-05-28 11:35",
      "unread": 0
    },
    {
      "name": "Omkar Rao",
      "message": "Ping me when free.",
      "status": "read",
      "time": "2025-05-29 19:00",
      "unread": 0
    },
    {
      "name": "Meera Iyer",
      "message": "Send the doc by EOD.",
      "status": "delivered",
      "time": "2025-05-30 12:20",
      "unread": 2
    },
    {
      "name": "Kunal Joshi",
      "message": "Call me asap.",
      "status": "sent",
      "time": "2025-05-30 12:45",
      "unread": 1
    },
  ];

  Widget getTickIcon(String status) {
    switch (status) {
      case "read":
        return const Icon(Icons.done_all, color: Colors.blueAccent, size: 18);
      case "delivered":
        return const Icon(Icons.done_all, color: Colors.grey, size: 18);
      case "sent":
        return const Icon(Icons.done, color: Colors.grey, size: 18);
      case "received":
      default:
        return const SizedBox(width: 18);
    }
  }

  String formatTime(String timeString) {
    final DateTime time = DateTime.parse(timeString);
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final messageDate = DateTime(time.year, time.month, time.day);

    if (messageDate == today) {
      return DateFormat('h:mm a').format(time);
    } else if (messageDate == today.subtract(const Duration(days: 1))) {
      return 'Yesterday';
    } else {
      return DateFormat('MMM d').format(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.greenAccent.shade700,
            child: Text(
              chat["name"][0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            chat["name"],
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Row(
            children: [
              getTickIcon(chat["status"]),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  chat["message"],
                  style: const TextStyle(color: Colors.white70),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formatTime(chat["time"]),
                style: TextStyle(
                  color: chat["unread"] > 0 ? Colors.greenAccent : Colors.white60,
                  fontSize: 12,
                ),
              ),
              if (chat["unread"] > 0)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color(0xFF00A884),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    chat["unread"].toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
            ],
          ),
          onTap: () {},
        );
      },
    );
  }
}
