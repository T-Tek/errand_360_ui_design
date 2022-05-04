// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers, unrelated_type_equality_checks, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class ApplicantsCategory extends StatefulWidget {
  const ApplicantsCategory({Key? key}) : super(key: key);

  @override
  State<ApplicantsCategory> createState() => _ApplicantsCategoryState();
}

class _ApplicantsCategoryState extends State<ApplicantsCategory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      
      child: Container(
        
        child: TabBar(unselectedLabelColor: Colors.grey, 
        indicatorWeight: 2,
        labelColor: Colors.white,
        isScrollable: true,
        indicatorColor: Colors.purple,
        labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
        indicator: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.purpleAccent),
          tabs: [
          Tab(child: Text('All Applicants'),),
          Tab(child: Text('Short Listed'),),
          Tab(child: Text('Declined'),),
          Tab(child: Text('Unsure'),),


          
        ]),
      ),
    );
  }
}
