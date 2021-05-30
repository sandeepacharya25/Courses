import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello/detailScreen.dart';
import 'package:hello/feed.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildTopPart(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: getFeed.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => ItemBuild(
                  feed: getFeed[index],
                  click: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SemDetail(
                        feed: getFeed[index],
                      ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemBuild extends StatefulWidget {
  final Feed feed;
  final Function click;
  ItemBuild({this.feed, this.click});
  @override
  _ItemBuildState createState() => _ItemBuildState();
}

class _ItemBuildState extends State<ItemBuild> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Icon(Icons.menu_book_rounded),
      title: Text("${widget.feed.titleSem}"),
    );
  }
}

class BuildTopPart extends StatefulWidget {
  @override
  _BuildTopPartState createState() => _BuildTopPartState();
}

class _BuildTopPartState extends State<BuildTopPart> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "Courses",
                style: Theme.of(context).textTheme.headline3.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Text(
                  "CSIT program are needed to take course in plan and executions of PC programming frameworks, data innovation and establishment of the hypothetical model of software engineering and useful foundation of PC equipment.",
                  style: GoogleFonts.poppins(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "Select your Semester",
                  style: GoogleFonts.poppins(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 5.0,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'feed.dart';

// class Courses extends StatefulWidget {
//   @override
//   _CoursesState createState() => _CoursesState();
// }

// class _CoursesState extends State<Courses> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Container(
//           child: Column(
//             children: [
//             //  SingleChildScrollView(
//                  Padding(
//                   padding: const EdgeInsets.only(left: 100, right: 100),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Center(
//                         child: Text(
//                           "Courses",
//                           style: TextStyle(
//                               fontSize: 80.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                       Text(
//                         "CSIT",
//                         style: TextStyle(
//                             fontSize: 40.0,
//                             fontWeight: FontWeight.w900,
//                             color: Colors.white),
//                       ),
//                       SizedBox(height: 15.0),
//                       Text(
//                         "CSIT program are needed to take course in plan and executions of PC programming frameworks, data innovation and establishment of the hypothetical model of software engineering and useful foundation of PC equipment.",
//                         style: TextStyle(
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.w300,
//                             color: Colors.white),
//                       ),
//                       SizedBox(height: 40.0),
//                       Text(
//                         "Select Your Semester",
//                         style: TextStyle(
//                             fontSize: 30.0,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white),
//                       ),
//                       Container(
//                         height: 5.0,
//                         width: MediaQuery.of(context).size.width * 0.7,
//                         color: Colors.green,
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Container(
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               GridView.builder(
//                                   padding: EdgeInsets.all(8.0),
//                                   gridDelegate:
//                                       SliverGridDelegateWithFixedCrossAxisCount(
//                                     crossAxisCount: 2,
//                                     childAspectRatio: 1.0,
//                                     crossAxisSpacing: 20,
//                                     mainAxisSpacing: 20,
//                                   ),
//                                   itemCount: getFeed().length,
//                                   itemBuilder: (context, index) {
//                                     return SemesterList(
//                                       feed: getFeed()[index],
//                                     );
//                                   }),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//             //  ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SemesterList extends StatefulWidget {
//   final Feed feed;
//   SemesterList({this.feed});
//   @override
//   _SemesterListState createState() => _SemesterListState();
// }

// class _SemesterListState extends State<SemesterList> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: 10.0,
//               ),
//               Icon(Icons.menu_book_rounded, size: 40.0, color: Colors.white),
//               SizedBox(
//                 width: 8.0,
//               ),
//               Column(
//                 children: [
//                   SizedBox(height: 10.0),
//                   Text(
//                     widget.feed.titleSem,
//                     style: TextStyle(
//                         fontSize: 35.0,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text(
//                     widget.feed.expainSem,
//                     style: TextStyle(fontSize: 20.0, color: Colors.white),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import 'feed.dart';

// class Courses extends StatefulWidget {
//   @override
//   _CoursesState createState() => _CoursesState();
// }

// class _CoursesState extends State<Courses> {
//   ScrollController controller = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             child: Stack(
//               children: [
//                 Column(
//                   children: [
//                     Expanded(
//                       child: Scrollbar(
//                         controller: controller,
//                         child: SingleChildScrollView(
//                           child: Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 100, right: 100),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Center(
//                                   child: Text(
//                                     "Courses",
//                                     style: TextStyle(
//                                         fontSize: 80.0,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                                 Text(
//                                   "CSIT",
//                                   style: TextStyle(
//                                       fontSize: 40.0,
//                                       fontWeight: FontWeight.w900,
//                                       color: Colors.white),
//                                 ),
//                                 SizedBox(height: 15.0),
//                                 Text(
//                                   "CSIT program are needed to take course in plan and executions of PC programming frameworks, data innovation and establishment of the hypothetical model of software engineering and useful foundation of PC equipment.",
//                                   style: TextStyle(
//                                       fontSize: 20.0,
//                                       fontWeight: FontWeight.w300,
//                                       color: Colors.white),
//                                 ),
//                                 SizedBox(height: 40.0),
//                                 Text(
//                                   "Select Your Semester",
//                                   style: TextStyle(
//                                       fontSize: 30.0,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.white),
//                                 ),
//                                 Container(
//                                   height: 5.0,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.7,
//                                   color: Colors.green,
//                                 ),
//                                 SizedBox(
//                                   height: 15.0,
//                                 ),
//                                 Container(
//                                   child: GridView.builder(
//                                       gridDelegate:
//                                           SliverGridDelegateWithFixedCrossAxisCount(
//                                         crossAxisCount: 2,
//                                         crossAxisSpacing: 10.0,
//                                         mainAxisSpacing: 10.0,
//                                       ),
//                                       padding: EdgeInsets.all(8.0),
//                                       itemCount: getFeed().length,
//                                       itemBuilder: (context, index) {
//                                         return SemesterList(
//                                           feed: getFeed()[index],
//                                         );
//                                       }),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SemesterList extends StatefulWidget {
//   final Feed feed;

//   SemesterList({this.feed});

//   @override
//   _SemesterListState createState() => _SemesterListState();
// }

// class _SemesterListState extends State<SemesterList> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//         child: Card(
//                     child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Icon(Icons.menu_book_rounded, size: 40.0, color: Colors.white),
//               SizedBox(
//                 width: 10,
//               ),
//                  Column(
//                   children: [
//                     SizedBox(height: 10.0),
//                     Text(
//                       widget.feed.titleSem,
//                       style: TextStyle(
//                           fontSize: 35.0,
//                           fontWeight: FontWeight.w900,
//                           color: Colors.white),
//                     ),
//                     SizedBox(height: 10.0),
//                     Text(
//                       widget.feed.expainSem,
//                       style: TextStyle(fontSize: 20.0, color: Colors.white),
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//       ),
// child: Container(
//   child: Card(
//     child: ListTile(

//       onTap: () {

//       },
//       leading: Icon(
//         Icons.menu_book_rounded,
//         color: Colors.green,
//         size: 30.0,
//       ),
//       title: Text(widget.feed.titleSem),
//       subtitle: Text(widget.feed.expainSem),
//     ),
//   ),
// ),
//     );
//   }
// }
