import 'package:flutter/material.dart';

import 'feed.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Scrollbar(
                  
                    controller: controller,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100, right: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Courses",
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "CSIT",
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "CSIT program are needed to take course in plan and executions of PC programming frameworks, data innovation and establishment of the hypothetical model of software engineering and useful foundation of PC equipment.",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              "Select Your Semester",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Container(
                              height: 5.0,
                              width: MediaQuery.of(context).size.width * 0.7,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GridView.builder(
                                        padding: EdgeInsets.all(8.0),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          
                                          childAspectRatio: 1.0,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                        ),
                                        itemCount: getFeed().length,
                                        itemBuilder: (context, index) {
                                          return SemesterList(
                                            feed: getFeed()[index],
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SemesterList extends StatefulWidget {
  final Feed feed;
  SemesterList({this.feed});
  @override
  _SemesterListState createState() => _SemesterListState();
}

class _SemesterListState extends State<SemesterList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.menu_book_rounded, size: 40.0, color: Colors.white),
              SizedBox(
                width: 8.0,
              ),
              Column(
                
                children: [
                  SizedBox(height:10.0),
                  Text(
                    widget.feed.titleSem,
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    widget.feed.expainSem,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
