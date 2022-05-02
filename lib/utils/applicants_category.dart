// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers, unrelated_type_equality_checks

import 'dart:ui';

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
        child: TabBar(unselectedLabelColor: Colors.red,
        labelColor: Colors.red,
        isScrollable: true,
        padding: EdgeInsets.only(left: 0.5),
          tabs: [
          Tab(child: OutlinedButton(onPressed: (){}, child: Text('All Applicants', style: TextStyle(fontSize: 12),),),),
          Tab(child: OutlinedButton(onPressed: (){}, child: Text('Shortlisted',style: TextStyle(fontSize: 12))),),
          Tab(child: OutlinedButton(onPressed: (){}, child: Text('Declined',style: TextStyle(fontSize: 12))),),
          Tab(child: OutlinedButton(onPressed: (){}, child: Text('Unsure',style: TextStyle(fontSize: 12))),),

          
        ]),
      ),
    );
  }
}
