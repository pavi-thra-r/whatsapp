import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Communities', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(icon: Icon(Icons.qr_code, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          // Info banner
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.lightbulb_outline, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Communities are moving", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      Text(
                        "View and create communities from the Chats tab, and organise them with a list.\n",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text("Add communities list", style: TextStyle(color: Colors.greenAccent)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // New community
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[800],
                radius: 24,
                child: Icon(Icons.group, color: Colors.white),
              ),
              SizedBox(width: 10),
              Text('New community', style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),

          SizedBox(height: 20),
          Divider(color: Colors.white24),

          // Sample Community 1
          communitySection(
            title: "Flutter Devs Community",
            announcementBy: "Admin John",
            announcement: "Welcome to all new members!",
            time: "Yesterday",
            icon: Icons.campaign,
          ),

          Divider(color: Colors.white24),

          // Sample Community 2
          communitySection(
            title: "AI Enthusiasts",
            announcementBy: "+91 98765 43210",
            announcement: "joined from the invite link",
            time: "4:10 pm",
            icon: Icons.group,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 6, left: 48),
            child: Text("View all", style: TextStyle(color: Colors.white70)),
          ),

          SizedBox(height: 20),
          Divider(color: Colors.white24),

          // Sample Community 3
          communitySection(
            title: "Design Team",
            announcementBy: "Ayesha",
            announcement: "🎨 New wireframes uploaded",
            time: "08/04/2025",
            icon: Icons.campaign,
          ),
        ],
      ),
    );
  }

  Widget communitySection({
    required String title,
    required String announcementBy,
    required String announcement,
    required String time,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[800],
            backgroundImage: AssetImage('assets/community_logo.png'), // Replace with real image or keep blank
          ),
          title: Text(title, style: TextStyle(color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 72.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: Colors.green, size: 20),
                  SizedBox(width: 8),
                  Text("Announcements", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(time, style: TextStyle(color: Colors.white54)),
                ],
              ),
              SizedBox(height: 4),
              Text("~ $announcementBy:  $announcement", style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ],
    );
  }
}
