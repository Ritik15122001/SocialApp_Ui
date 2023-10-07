import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double buttonTopPadding = height * 0.1;
    double buttonLeftPadding = width * 0.62;
    double buttonWidth = width * 0.35;

    double containerHeight = height * 0.75;
    double containerWidth = width * 5;
    double profileImageWidth = width* 0.45;

    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          color: Colors.blue,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: [
                // Add a Positioned widget for the "Following" button
                Positioned(
                  top: buttonTopPadding*0.4,
                  left: buttonLeftPadding,
                  child: Container(
                    height: height * 0.05,
                    width: buttonWidth,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action here when the button is pressed
                      },
                      child: Text(
                        'Following',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height,
                      width: width,
                      clipBehavior: Clip.none,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double innerHeight = constraints.maxHeight;
                          double innerWidth = constraints.maxWidth;
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                    height: containerHeight,
                                    width: containerWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                      ),
                                      color: Colors.black87,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 58.0),
                                              child: Text("Shane Mathias",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Co-Founder",
                                              style: TextStyle(fontSize: 15, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(50),
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage('Image/pic.jpg'),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "Snowy",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(width: 10,),

                                              Column(
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(50),
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage('Image/pic1.jpg'),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "Sandy",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),
                                         const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "2",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Post",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            VerticalDivider(
                                              color: Colors.white,
                                              thickness: 1,
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Follower",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            VerticalDivider(
                                              color: Colors.white,
                                              thickness: 1,
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "2",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Following",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: height*0.15,
                                                  width: width*0.3,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow:[
                                                        BoxShadow(
                                                          blurRadius: 25.0,
                                                        ),
                                                      ],
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage('Image/pic.jpg'),
                                                      )
                                                  ),
                                                )
                                              ],
                                            ),SizedBox(width: 10,),
                                            Column(
                                              children: [
                                                Container(
                                                  height: height*0.15,
                                                  width: width*0.3,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow:[
                                                        BoxShadow(
                                                          blurRadius: 25.0,
                                                        ),
                                                      ],
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage('Image/pic1.jpg'),
                                                      )
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    child: Image.asset(
                                      'Image/profile.png',
                                      width: profileImageWidth,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
