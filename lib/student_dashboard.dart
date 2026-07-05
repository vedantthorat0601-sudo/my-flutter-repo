import 'package:flutter/material.dart';

class StudentDashboardPage extends StatefulWidget {
  const StudentDashboardPage({super.key});

  @override
  State<StudentDashboardPage> createState() => _HomePageState();
}

final List<Map<String, String>> subjects = [
      {"subject": "Mobile App Development", "teacher": "Prof. Alan Turing"},
      {"subject": "Cloud Computing", "teacher": "Dr. Grace Hopper"},
      {"subject": "UI/UX Design", "teacher": "Prof. Dieter Rams"},
       {"subject": "UI/UX Design", "teacher": "Mr. A.P. Roy"},
        {"subject": "UI/UX Design", "teacher": "Prof. John Wich"},
    ];
final List<String> skills = [
  "Flutter",
  "Dart",
  "Firebase",
  "Git",
  "REST API",
  "SQLite",
  "Provider",
  "BLoC",
];

class _HomePageState extends State<StudentDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
    
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.school_rounded,
            color: Colors.pink,
            size: 45.0,
          ),
        ),
        title: Text("Student Dashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_rounded,
              color: Colors.orange,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.black45,
              size: 30.0,
            ),
          ),
        ],
        toolbarHeight: 60,

        foregroundColor: Colors.pinkAccent,
        backgroundColor: Colors.grey.shade300,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Welcome Card Container
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    blurRadius: 30,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: const Center(
                child: FittedBox(
                  child: Text(
                    " Welcome Back, Vedant! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
            ),

            // 2. Profile Card Container
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    blurRadius: 25,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundImage: const AssetImage("assets/icons/pngwing.com.png"),
                      backgroundColor: Colors.pink.shade100,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const FittedBox(
                    child: Text(
                      "Vedant Thorat",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  FittedBox(
                    child: Text(
                      "Course: Mobile Application Development",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink.shade50,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 3. Stats Grid (Row of Cards)
            Row(
              children: [
                _buildStatCard("Assignments", "10", Icons.assignment, Colors.blue),
                const SizedBox(width: 8),
                _buildStatCard("Attendance", "95%", Icons.calendar_month, Colors.green),
                const SizedBox(width: 8),
                _buildStatCard("My Projects", "5", Icons.folder_copy, Colors.orange),
                const SizedBox(width: 8),
                _buildStatCard("My Marks", "89%", Icons.star, Colors.purple),
              ],
            ),
            const SizedBox(height: 28),

            // 4. Subjects Section
            const Padding(
              padding: EdgeInsets.only(left: 4, bottom: 12),
              child: Text(
                "My Subjects",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.pink.shade50, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.menu_book_rounded,
                            color: Colors.pinkAccent,
                            size: 26,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subjects[index]["subject"]!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                subjects[index]["teacher"]!,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // 5. Skills Section
            const Padding(
              padding: EdgeInsets.only(left: 4, bottom: 12),
              child: Text(
                "My Skills",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skills.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2.3,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.pink.shade100, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => debugPrint(skills[index]),
                    child: Center(
                      child: Text(
                        skills[index],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Assignment Completed! "),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.pinkAccent,
            ),
          );
        },
        child: const Icon(Icons.check, color: Colors.white, size: 28),
      ),
    );
  }

  // Extracted Helper Method for Clean Stat Cards
  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Expanded(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade100, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 4),
          child: Column(
            children: [
              Icon(icon, size: 28, color: color),
              const SizedBox(height: 8),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 11, color: Colors.black54, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
