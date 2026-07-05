import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      //   body: Center(
      //     child: Column(
      //           mainAxisSize: MainAxisSize.min,//Column at center

      //      //mainAxisAlignment: ,
      //     children: [

      //       Padding(
      //         padding:const EdgeInsets.all(8.0),
      //         child:
      //       ProfileCard(
      //         url:"assets/icons/pngwing.com.png", radius: 80,
      //         )),
      //        SizedBox(height: 5,), //used for space between Avatar icons. or use pading
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ProfileCard(
      //           url:"assets/icons/pngwing.com.png", radius: 80,
      //           ),
      //       ),
      //         SizedBox(height: 5,),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ProfileCard(
      //           url:"assets/icons/pngwing.com.png", radius: 80,
      //           ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 380,
                height: 290,
                // color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 8, 20, 42),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/cover.jpg",
                        width: double.infinity,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom:38,
                      left: 15,
                      child: Text(
                        "Vedant Thorat",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(blurRadius: 6, color: Colors.black)],
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 45,
                      left: 154,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.check_circle_outline_rounded,
                          size: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    //Linked-in logo added here!!!!
                    Positioned(
                      bottom: 45, // pushes it down so it overlaps cover + card
                      left: 176,
                      child: Stack(
                        children: [
                          //Padding(padding: EdgeInsetsGeometry.all(20)),
                          CircleAvatar(
                            radius: 9,
                            

                            foregroundImage: AssetImage(
                              "assets/icons/linkedin_icon.png",
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        "Intern at \n@ThoughtBlissSolutions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.normal,
                          shadows: [Shadow(blurRadius: 6, color: Colors.black)],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110, // pushes it down so it overlaps cover + card
                      left: 20,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 45,

                            backgroundImage: AssetImage(
                              "assets/images/profile.png",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                size: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                color: Colors.green.shade500,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: 10,
                      right: 15,

                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),

                        child: Text(
                          "99",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 15,
                      child: ElevatedButton(
                        onPressed: () {
                          print("Following");
                        },
                        focusNode: null,
                        onFocusChange: (value) {},
                        onHover: (value) {},

                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          disabledBackgroundColor: Colors.grey,
                          elevation: 2,
                          shadowColor: Colors.blueGrey,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          side: BorderSide(width: 3, color: Colors.white30),
                          enableFeedback: true,

                          //enabledMouseCursor:,
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // statesController: ,
                        //onHover:() {},
                        child: Text("Follow"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
