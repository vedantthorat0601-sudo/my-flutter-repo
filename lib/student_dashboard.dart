import 'package:flutter/material.dart';

class StudentDashboardPage extends StatefulWidget {
  const StudentDashboardPage({super.key});

  @override
  State<StudentDashboardPage> createState() => _HomePageState();
}

final List<Map<String, String>> subjects = [
  {"subject": "Flutter", "teacher": "Mr. Sharma"},
  {"subject": "Dart", "teacher": "Mrs. Patel"},
  {"subject": "Firebase", "teacher": "Mr. Khan"},
  {"subject": "Git & GitHub", "teacher": "Mrs. Singh"},
  {"subject": "REST API", "teacher": "Mr. Joshi"},
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
        child: Column(
          children: [
            Container(
              width: 200,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    blurRadius:55,
                    blurStyle: BlurStyle.inner,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),

              child: const FittedBox(
                child: Text(
                  " Welcome Vedant!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 3,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pinkAccent,
                    blurRadius: 55,
                    blurStyle: BlurStyle.inner,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/icons/pngwing.com.png"),
                  ),

                  const SizedBox(height: 15),

                  // Student Name
                  FittedBox(
                    child: Text(
                      "Vedant Thorat",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Course Name
                  FittedBox(
                    child: Text(
                      "Course: Mobile Application Development",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.assignment,
                              size: 35,
                              color: Colors.blue,
                            ),

                            SizedBox(height: 10),

                            Text("Assignments"),

                            SizedBox(height: 5),

                            Text(
                              "10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 35,
                              color: Colors.green,
                            ),

                            SizedBox(height: 10),

                            Text("Attendance"),

                            SizedBox(height: 5),

                            Text(
                              "95%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.folder_copy,
                              size: 35,
                              color: Colors.orange,
                            ),

                            SizedBox(height: 10),

                            Text("My Projects"),

                            SizedBox(height: 5),

                            Text(
                              "5",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Icon(Icons.star, size: 35, color: Colors.purple),

                            SizedBox(height: 10),

                            Text("My Marks"),

                            SizedBox(height: 5),

                            Text(
                              "89%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Subjects",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subjects.length,

                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),

                    child: Padding(
                      padding: const EdgeInsets.all(15),

                      child: Row(
                        children: [
                          // Subject Icon
                          const Icon(
                            Icons.menu_book,
                            color: Colors.deepOrange,
                            size: 30,
                          ),

                          const SizedBox(width: 15),

                          // Subject Name & Teacher Name
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  subjects[index]["subject"]!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  subjects[index]["teacher"]!,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Arrow Icon
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Skills",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                itemCount: skills.length,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),

                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        print(skills[index]);
                      },

                      child: Center(
                        child: Text(
                          skills[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,

        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Assignment Completed")));
        },

        child:Icon(Icons.check,color: Colors.white,),
        
      ),
      
    );
  }
}
