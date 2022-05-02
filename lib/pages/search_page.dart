// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace

import 'package:errand360_ui/pages/welcome_page.dart';
import 'package:errand360_ui/utils/applicants.dart';
import 'package:errand360_ui/utils/applicants_category.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {



  
  final List applicantsList = [
    ['images/profile_img.png', 'Nnamdi CTO', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Temitope Tek', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Abraham ', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Temitope', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Temitope', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Temitope', 'Lagos, Nigeria'],
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search applicants",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.filter,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            width: 1.0,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // application

            Container(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back)),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        'Applications',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // applicants filter/sort
            ApplicantsCategory(),

            // list of applicants
            Expanded(
              child: Container(
                  child: ListView.builder(
                      itemCount: applicantsList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return ApplicantsCard(
                          applicantProfilePic: applicantsList[index][0],
                          applicantName: applicantsList[index][1],
                          applicantAddress: applicantsList[index][2],
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
