// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class EditJob extends StatelessWidget {
  const EditJob({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                  ),
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: 
                      [Icon(Icons.arrow_back),
                        
                        Text('Edit Job Details', style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey
                      ),),
                      Text('Delete Job', style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple
                      ),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Role details', style: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.bold,
                      )),
                ),
              ),
      
              // marketing specialist
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Marketing specialist",
                            suffixIcon: Icon(
                              Icons.edit
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
              SizedBox(height: 15,),
      
      
              // remote

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Remote",
                            suffixIcon: Icon(
                              Icons.edit
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
               SizedBox(height: 15,),

               // job details
                  Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                        [Text('Job details', style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold,
                        )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Pay', style: TextStyle(
                              color: Colors.grey[500], fontWeight: FontWeight.bold,
                              fontSize: 10
                            )
                            ),
                          ),
                        ),
                      ],
                  ),
          
                  
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                          
                            hintText: "\$11-\$23 per hour",
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
               SizedBox(height: 15,),
      
      
              // job type
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Job type', style: TextStyle(
                            color: Colors.grey[500], fontWeight: FontWeight.bold,
                            fontSize: 10
                          )
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Full-time, Part-time, Contract",
                           
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

                SizedBox(height: 15,),

              //number of openings
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Number of openings for this position', style: TextStyle(
                            color: Colors.grey[500], fontWeight: FontWeight.bold,
                            fontSize: 10
                          )
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "2",
                           
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
      // schedule
      
                SizedBox(height: 15,),
                
              //number of openings
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Schedule', style: TextStyle(
                            color: Colors.grey[500], fontWeight: FontWeight.bold,
                            fontSize: 10
                          )
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "8 hours shift",
                           
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

              SizedBox(height: 15,),
            

                // benefits

                SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Container(
                           child: Text('Benefits', style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,),
                         ),
                       ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200], borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ Tuition Reimbursment', 
                        style: TextStyle(fontWeight: FontWeight.w500,
                          color: Colors.grey[500]
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text('+ Add', style: TextStyle(
                        color: Colors.purple[700], fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                  ),
                   
                ),
              ),
      
            //supplementry
            
                SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Container(
                           child: Text('Supplemental pay', style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,),
                         ),
                       ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200], borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text('+ Signing bonus', 
                        style: TextStyle(fontWeight: FontWeight.w500,
                          color: Colors.grey[500]
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text('+ Add', style: TextStyle(
                        color: Colors.purple[700], fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              

              
               // job settings

                  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text('Job settings', style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold,
                        )
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            child: Text('Country and language', style: TextStyle(
                              color: Colors.grey[500], fontWeight: FontWeight.bold,
                              fontSize: 10
                            )
                            ),
                          ),
                        ),
                      ],
                  ),
          
                  
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "United states english",
                            
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
               SizedBox(height: 15,),
      
      
              // promotion 
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Promotion location', style: TextStyle(
                            color: Colors.grey[500], fontWeight: FontWeight.bold,
                            fontSize: 10
                          )
                          ),
                ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Remote",
                           
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

                SizedBox(height: 15,),

              //number of openings
              Container(
                alignment: Alignment.bottomLeft,
                child: Text('Expect to hire within', style: TextStyle(
                          color: Colors.grey[500], fontWeight: FontWeight.bold,
                          fontSize: 10
                        )
                        ),
              ),

               Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "1 to 3 days",
                           
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

              // save changes

                    SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple[600]
                ),
                child: Text('Login', style: TextStyle(
                  
                  color: Colors.white, fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,),
              ),
            ),

              //back 

                    SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
                ),
                child: Text('Back', style: TextStyle(
                  
                  color: Colors.white, fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,),
              ),
            ),
            ],
          ),
      ),
      );
  }
}
