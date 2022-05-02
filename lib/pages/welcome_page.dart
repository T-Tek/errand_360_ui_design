// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:errand360_ui/pages/search_page.dart';
import 'package:errand360_ui/utils/applicants.dart';
import 'package:errand360_ui/utils/operation_manager.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List jobList = [
    [
      'errand.jpg',
      'Operation Manager',
      45,
      'Lagos, Nigeria',
      'We are looking for',
      10
    ],
      [
      'google_icon.png',
      'DevOp',
      14,
      'Abuja, Nigeria',
      'We are looking for',
      10
    ], [
      'google_icon.png',
      'Software Engineer',
      100,
      'Ibadan, Nigeria',
      'We are looking for',
      24
    ],
  ];

  final List applicantsList = [
    ['images/profile_img.png', 'Nnamdi CTO', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Rashydon', 'Kaduna, Nigeria'],
    ['images/profile_img.png', 'Abraham', 'Abuja, Nigeria'],
    ['images/profile_img.png', 'Jumoke', 'Accra, Ghana'],
    ['images/profile_img.png', 'Temitope Tek', 'Lagos, Nigeria'],
    ['images/profile_img.png', 'Temitope', 'Lagos, Nigeria'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  left: 20,
                ),
                child: Container(
                  height: 35,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        fontSize: 25),
                  ),
                ),
              ),
              Icon(Icons.notifications)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Errand360!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          // active jobs

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Active Jobs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          //operation manager role
          Container(
              height: 150,
              color: Colors.white,
              child: ListView.builder(
                  itemCount: jobList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return OperationManagerCard(
                      applicantProfilePic: jobList[index][0],
                      jobTitle: jobList[index][1],
                      hourlyRate: jobList[index][2],
                      profileAddress: jobList[index][3],
                      jobDesc: jobList[index][4],
                      dateCreated: jobList[index][5],
                    );
                  })),
          SizedBox(
            height: 8,
          ),
          // applicants list
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Container(
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Applicants',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchPage()));
                              },
                              child: Text(
                                'View all',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey[100],
                        height: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: applicantsList.length,
                            itemBuilder: (context, index) {
                              return ApplicantsCard(
                                applicantProfilePic: applicantsList[index][0],
                                applicantName: applicantsList[index][1],
                                applicantAddress: applicantsList[index][2],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
