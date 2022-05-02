// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'dart:io';

import 'package:flutter/material.dart';

class OperationManagerCard extends StatelessWidget {
  final String applicantProfilePic;
  final String jobTitle;
  final int hourlyRate;
  final String profileAddress;
  final String jobDesc;
  final int dateCreated;




  const OperationManagerCard({
    Key? key,
    required this.applicantProfilePic,
    required this.jobTitle,
    required this.hourlyRate,
    required this.profileAddress,
    required this.jobDesc,
    required this.dateCreated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 320,
        height:120,
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: Offset(1, 1),
                  color: Colors.grey),
              BoxShadow(
                  spreadRadius: 7, 
                  offset: Offset(-1, -1), 
                  color: Colors.white)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Image.asset(applicantProfilePic),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      jobTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 20,
                        color: Colors.grey[500]
                        ),
                    ),
                    SizedBox(height: 5,),
                     Container(
                  width: 230,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(profileAddress, 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.grey
                        ),
                        ),
                      SizedBox(width: 10),
                      Text('Remote', 
                        style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.grey
                        ),),
                      SizedBox(width: 10),

                      Divider(),
                      Text('Fulltime',
                        style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.grey
                        ),),
                    ],
                  ),
              ),
                      ],
                    )
                  ),
                ),
                Container(
                    color: Colors.white,
                    child: Text('\$' + hourlyRate.toString()+ '/hr',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    )
                    )
              ],
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    jobDesc,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      ),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'Edit Job Details',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      ),
                ),
                 Container(
                  child: Text(
                    'Created' +' '+ dateCreated.toString()+ ''+'days ago',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
