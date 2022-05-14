// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:errand360_ui/pages/view_profile.dart';
import 'package:flutter/material.dart';

class ApplicantsCard extends StatefulWidget {
  final String applicantProfilePic;
  final String applicantName;
  final String applicantAddress;

  const ApplicantsCard({
    Key? key,
    required this.applicantProfilePic,
    required this.applicantName,
    required this.applicantAddress,
  }) : super(key: key);

  @override
  State<ApplicantsCard> createState() => _ApplicantsCardState();
}

class _ApplicantsCardState extends State<ApplicantsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 140,
        margin: EdgeInsets.only( bottom: 12,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, ),
                  child: Container(

                    color: Colors.white,
                    child: Row(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(widget.applicantProfilePic),
                            radius: 25,
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.1),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.5),
                                  child: Text(
                                    widget.applicantName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600],
                                        fontSize: 17),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  widget.applicantAddress,
                                  style: TextStyle(
                                      color: Colors.grey[500], 
                                      height: 0.2, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.purple,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewProfile()));
                      },
                      child: Text('View Profile'),
                      style: ElevatedButton.styleFrom(primary: Colors.purple)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'See Details',
                      style: TextStyle(color: Colors.purple),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.purple)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
