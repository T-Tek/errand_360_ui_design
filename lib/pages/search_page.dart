// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:errand360_ui/utils/applicants.dart';
import 'package:errand360_ui/utils/applicants_list.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Applicants",
                  suffixIcon: Icon(Icons.filter),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [Icon(Icons.arrow_back), Text('Applicants')],
            ),
            SizedBox(height: 10),
            Container(
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: EdgeInsets.only(left: 0.5),
                  controller: _tabController,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'All applicants'),
                    Tab(text: 'Shortlisted'),
                    Tab(text: 'Unsure'),
                    Tab(text: 'Declined'),
                  ]),
            ),
            SizedBox(height: 20),

            Expanded(
              child: TabBarView(
                controller: _tabController, 
                children: [
                ListView.builder(
                  itemCount: allApplicants.length,
                  itemBuilder: (context, index) {
                  return ApplicantsCard(
                      applicantProfilePic: allApplicants[index][0],
                      applicantName: allApplicants[index][1],
                      applicantAddress: allApplicants[index][2],);
                }),
                 ListView.builder(
                  itemCount: shortListed.length,
                  itemBuilder: (context, index) {
                  return ApplicantsCard(
                      applicantProfilePic: shortListed[index][0],
                      applicantName: shortListed[index][1],
                      applicantAddress: shortListed[index][2],);
                }),
                   ListView.builder(
                  itemCount: unSure.length,
                  itemBuilder: (context, index) {
                  return ApplicantsCard(
                      applicantProfilePic: unSure[index][0],
                      applicantName: unSure[index][1],
                      applicantAddress: unSure[index][2],);
                }),
                    ListView.builder(
                  itemCount: deClined.length,
                  itemBuilder: (context, index) {
                  return ApplicantsCard(
                      applicantProfilePic: deClined[index][0],
                      applicantName: deClined[index][1],
                      applicantAddress: deClined[index][2],);
                }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
