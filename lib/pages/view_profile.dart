// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: Center(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/errand360.jpg')
                            ),
            
                        SizedBox(width: 15,),
            
            
                              // Name and email
                               Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nnami CTO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'email',
                                style: TextStyle(color: Colors.grey[500], height: 0.2),
                              ),
                            ],
                          ),
                        ),
                            ],
                          ),
            
                        ),
                        Container(
                            color: Colors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chat,
                                  color: Colors.purpleAccent,
                                )))
                      ],
                    ),
                      SizedBox(height: 10,),
            
                      //social skills
                    Row(
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text
                        ('Social skills', 
                        style: TextStyle(
                          color: Colors.grey, 
                          fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                        ]
                        ),
                      SizedBox(height: 2,),
                  
                    Container(
                      child: Wrap(
                        runSpacing: 0.0,
                        spacing: 5,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text('Empathy'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Corporation'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Listening'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Verbal Communication'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Written Communuication'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                        ],
                      ),
                    ),
                           SizedBox(height: 10,),
            
            
                           //professional skills
                        Row(
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text
                        ('Professional skills', 
                        style: TextStyle(
                          color: Colors.grey, 
                          fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                        ]
                        ),
                      SizedBox(height: 10,),
                        Container(
                      child: Wrap(
                        runSpacing: 0.0,
                        spacing: 5,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text('C++'), style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Java'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Javascript'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('PHP'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Python'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('Swift'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('CSS'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                          ElevatedButton(onPressed: (){}, child: Text('HTML'),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent)),
                        ],
                      ),
            
                        //Education
                    ),
                     SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text
                        ('Education', 
                        style: TextStyle(
                          color: Colors.grey, 
                          fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                        ]
                        ),
            
                     SizedBox(height: 5,),
            
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: 
                            [
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Text(
                                'University of Benin',
                            style: TextStyle(
                            color: Colors.grey[500], 
                            fontWeight: FontWeight.bold, fontSize: 18
                            ),),
                              ),
            
                            Text('3 more',
                            style: TextStyle(
                            color: Colors.grey[500], 
                            fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                           Padding(
                             padding: const EdgeInsets.only(left: 17),
                             child: Text('Bachelor of Business Administration', 
                      style: TextStyle(
                        color: Colors.grey, 
                        fontWeight: FontWeight.w400
                        ),
                        ),
                           ),
            
                             SizedBox(height: 20,),
            
            
                        //Experience
                           Row(
                      children: [Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text
                        ('Experience', 
                        style: TextStyle(
                          color: Colors.grey, 
                          fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                        ]
                        ),
                     SizedBox(height: 5,),
            
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: 
                            [Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Text('Boys and Girls club',
                              style: TextStyle(
                              color: Colors.grey[500], 
                              fontWeight: FontWeight.bold, fontSize: 18
                              ),),
                            ),
            
                            Text('2 more',
                            style: TextStyle(
                            color: Colors.grey[500], 
                            fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                           Padding(
                             padding: const EdgeInsets.only(left: 17),
                             child: Text('Summer Youth Volunteer', 
                      style: TextStyle(
                        color: Colors.grey, 
                        fontWeight: FontWeight.w400
                        ),
                        ),
                           ),
            
                          //View full profile
                     SizedBox(height: 11,),
                     Divider(color: Colors.grey, thickness: 2,),
                     SizedBox(height: 11,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: 
                         [Text('View full profile', 
                         style: TextStyle(fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold
                         ),
                         ),
                       ],
                     )
                      ]
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
