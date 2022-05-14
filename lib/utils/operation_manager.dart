// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'dart:io';

import 'package:errand360_ui/pages/edit_job.dart';
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
    return Container(
      height:110,
      padding: EdgeInsets.only(left: 5, right: 20),
      margin: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
      
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
                offset: Offset(-1, -4), 
                color: Colors.white)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar( 
              backgroundImage: AssetImage(applicantProfilePic),
              radius: 22,
             ),
             SizedBox(width: 5,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                    [Text(
                        jobTitle,
                        style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18,
                      color: Colors.grey[500]
                      ),
                    ),
                    Row(
                      children: [
                         Text(profileAddress, 
                          style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: Colors.grey,
                          fontSize: 12
                        ),
                        ),
                         Text('|Remote|', 
                          style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: Colors.grey,
                          fontSize: 12
                          ),),
                            Text('Fulltime',
                          style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: Colors.grey,
                          fontSize: 12
                          ),),


                      ],
                    )
                  ],
                ),
              ),
                
              Container(
                child: Text('-\$' + hourlyRate.toString()+ '/hr',
                style: TextStyle(
                  color: Colors.grey
                ),
                ),
              ),
            ],
          ),
         
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                jobDesc,
                style: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold,
                          fontSize: 12),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditJob()));
                },
                child: Text(
                  'Edit Job Details',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold,
                            fontSize: 12),
                ),
              ),
              SizedBox(width:70),
               Text(
                 'Created' +' '+ dateCreated.toString()+ ''+'days ago',
                 style: TextStyle(
                     color: Colors.grey, fontWeight: FontWeight.bold
                     , fontSize: 12),
               ),
            ],
          ),
          Row(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}
