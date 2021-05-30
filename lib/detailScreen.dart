import 'package:flutter/material.dart';
import 'package:hello/courses.dart';

import 'feed.dart';

class SemDetail extends StatefulWidget {
  final Feed feed;
  SemDetail({this.feed});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<SemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildTopPart(),
          ],
        ),
      ),
      
    );
  }
}