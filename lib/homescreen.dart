import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/Search.dart';
import 'package:streamflex/create.dart';
import 'package:streamflex/detail.dart';
import 'package:streamflex/download.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/profile.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  Widget build(BuildContext context) {



Future<List<DocumentSnapshot>> getData() async {
  final firestore = FirebaseFirestore.instance;
  QuerySnapshot snapshot = await firestore.collection('Recommended').get();
  return snapshot.docs;
}



    return Scaffold(
      
     
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.primaryGradient,
          
        ),   
          
        
        
        child: Scaffold(
          backgroundColor: Colors.transparent,
 appBar: AppBar(

        title: const Text(''),
         backgroundColor: Colors.transparent,
        elevation: 0,
         leading: IconButton(
              icon: 
                
               Image.asset('assets/Combined-Shape.png' ),
              
              onPressed: () { 
                 Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
               },
            ), 
            flexibleSpace: Center(
              child: Row(
               
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 25),
                child: Image.asset('assets/STREAMFLEX (1).png',height: 30,)
                ),
              ],
              ),
            ),
             actions: [
            // Your other action buttons go here
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                
                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  Search()));
              },
            ),
          ],
            
       
        
      ),


           bottomNavigationBar: Container(
      
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          
          backgroundColor: const Color.fromARGB(255, 57, 106, 155),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: 
            IconButton(
              icon: 
                
                Image.asset('assets/Vector.png')
              ,
              onPressed: () { 
                 Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
               },
            ),
            label: ""
            ),
            BottomNavigationBarItem(icon: 
            IconButton(
              icon: 
                
                Image.asset('assets/Group 109.png',)
              ,
              onPressed: () { 
                 Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  down()));
               },


               
            ),
            label: ""
            ),
            BottomNavigationBarItem(icon: 
            IconButton(
              icon: 
                
                Image.asset('assets/Combined-Shape.png')
              ,
              onPressed: () {  },
            ),
            label: ""
            ),
            BottomNavigationBarItem(icon: 
            IconButton(
              icon: 
                
                Image.asset('assets/Combined-Shape (1).png',)
              ,
              onPressed: () { 
                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CreateAccount()));
               },
            ),
            label: ""
            ),
            BottomNavigationBarItem(icon: 
            IconButton(
              icon: const Icon(
                Icons.person
      
              ),
                
               
              
              onPressed: () {

                 Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  UserProfileScreen()));
                },
            ),
            label: ""
            ),
           
            
      
          ], ),),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
              SingleChildScrollView(
               
                child: Stack(
                  
                  children:[ 
                    Container(
                       decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 6, 80, 100),// Set the color of the border
                    width: 1.0, // Set the width of the border
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Optional border radius
                ),
            
                       child: Opacity(opacity: 1,child: Image.asset('assets/image 6.png',height:90,width: 500,fit: BoxFit.cover,
                )),
            
                    ),
                   
               
                
                  
                   
                
                    
                     Container(
                      padding: const EdgeInsets.only(top: 10,left: 15),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        
                        
                         children:  [
                          Text('''Hello,
What you want to watch?''',
                           style: GoogleFonts.poppins(
                          
                                       color: const Color.fromARGB(255, 245, 239, 239),
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                       
                                      
                                          ),
                           
                          ),
                          
                          
                          
                         
                        
                         
                                   
                   
                                   
                         ],
                       ),
                     ),
                     Container(
                      padding: EdgeInsets.only(top: 96),
            
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        ElevatedButton(onPressed: () {
                     
                                     
                                            
                                                  
                                     
                                          },
                          
                                              
                            
                     
                          
                           
                                 
                       
                                 
                            
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20.0), // Adjust the radius to make it circular
                                   ),
                                minimumSize: const Size(120, 40),
                             
                             backgroundColor:  Color.fromARGB(255, 26, 146, 186),
                            ),
                            child: Text('''FOR YOU''',
                            style: GoogleFonts.poppins(
                            
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         fontSize: 15,
                                         fontWeight: FontWeight.w500,
                                         
                                        
                                            ),
                                             )),
            
                                              ElevatedButton(onPressed: () {
                     
                                     
                                            
                                                  
                                     
                                          },
                          
                                              
                            
                     
                          
                           
                                 
                       
                                 
                            
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20.0), // Adjust the radius to make it circular
                                   ),
                                minimumSize: const Size(120, 40),
                             
                             backgroundColor:  Color.fromARGB(255, 26, 146, 186),
                            ),
                            child: Text('''TOP CHARTS''',
                            style: GoogleFonts.poppins(
                            
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         fontSize: 15,
                                         fontWeight: FontWeight.w500,
                                         
                                        
                                            ),
                                             )),
            
                                              ElevatedButton(onPressed: () {
                     
                                     
                                            
                                                  
                                     
                                          },
                          
                                              
                            
                     
                          
                           
                                 
                       
                                 
                            
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20.0), // Adjust the radius to make it circular
                                   ),
                                minimumSize: const Size(120, 40),
                             
                             backgroundColor:  Color.fromARGB(255, 26, 146, 186),
                            ),
                            child: Text('''CATEGORY''',
                            style: GoogleFonts.poppins(
                            
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         fontSize: 15,
                                         fontWeight: FontWeight.w500,
                                         
                                        
                                            ),
                                             )),
                       ],
                     
                     
                       ),
                       
            
            
                     ),
                     Container(
                      padding: EdgeInsets.only(top: 150,left: 5),
                      child: Column(
                        children: [
                          Text('''Recommended For You''',
                            style: GoogleFonts.poppins(
                            
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         fontSize: 21,
                                         fontWeight: FontWeight.w500,
                                         
                                        
                                            ),
                                             ),
                                             SizedBox(
                                              height: 220,
                                              child: FutureBuilder<QuerySnapshot>(
                                                future: FirebaseFirestore.instance.collection('Recommended').get(),
                                                builder: (context,snapshot){
                                                   if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
                    }
             if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
                List<Widget> imageWidgets = snapshot.data!.docs.map((document) {
                // Assuming 'imageUrl' is the field that contains the image URL
                dynamic imageUrl = document['url'];
                 // Check the type and convert it to a list if needed
                List<dynamic> imageUrls =
                    imageUrl is List ? imageUrl : [imageUrl];
            
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: imageUrl.map<Widget>((imageUrl) {
                      return Image.network(imageUrl.toString()
                      ,width: 140,
                      height: 290,
                      
                      );
                    }).toList(),
                  ),
                );
              }).toList();
                                                  
                                                  return ListView(
                                                                  padding: EdgeInsets.only(left: 2),
                                                    scrollDirection:Axis.horizontal,
                                                      children:
                                                      
                                                         
                                                      imageWidgets,
                                                      
            
                                                   
                                                    );
                                                
                                                
                                                  
                                                }
                                              ),
                                             )
                        ],
            
                      ),
                     ),
                  
                     Container(
                      padding: EdgeInsets.only(top: 440,left: 20),
                      child: Column(
                        children: [
                          Text('Tv Shows',
                           style: GoogleFonts.poppins(
                            
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         fontSize: 21,
                                         fontWeight: FontWeight.w500,
                                         
                                        
                                            ),
                                   
            
                          ),
                          SizedBox(height: 5,),
                          
                          Container(
                            child: Stack(
                              children:[
            
                                
                                
                                
                                
                                 Padding(
                                   padding: const EdgeInsets.only(top: 30),
                                   child: Card(
                                                                 
                                        elevation: 0,
                                        shadowColor: Color.fromARGB(255, 0, 0, 0),
                                        color: Color.fromARGB(255, 0, 152, 160),
                                        child: SizedBox(
                                          width: 360,
                                          height: 140,
                                          // child: Stack(
                                          //   children:[  ,
                                            
                                          //   Padding(
                                          //     padding: const EdgeInsets.all(20.0),
                                              
                                          //     ),
                                          
                                          // ]),
                                          ),
                                                                ),
                                 ),
                          
                               Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(bottom: 20, left:20 ),
                                     child: Row(
                                    
                                      
                                       children: [
                                         ClipRRect
                                         ( borderRadius: BorderRadius.circular(20.0), 
                                          
                                          child: Opacity(opacity: 1,child: Image.asset('assets/MONEY HEIST (1).jpg',height:160,width: 110,))),

                                          Padding(
                                            padding: const EdgeInsets.only(bottom:35.0, left: 10,top: 50),
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap:  (){   Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail()));},
                                                  child: Text("Money Heist"
                                                  
                                                ,
                                                   style: GoogleFonts.poppins(
                                                                            
                                                     color: Color.fromARGB(255, 255, 255, 255),
                                                     fontSize: 21,
                                                     fontWeight: FontWeight.w700,
                                                     
                                                    
                                                        ),
                                                        
                                                  ),
                                                ),
                                                                                Text('''Geners : Action, Crime, Drama. '''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 10,
                                                   fontWeight: FontWeight.w700,
                                                   
                                                  
                                                      ),),
                                                      
                                                                                Text('''Cast : Álvaro Morte, Úrsula Corberó, 
Pedro Alonso, Itziar Ituño, Alba Flores. '''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 10,
                                                   fontWeight: FontWeight.w700,
                                                   
                                                  
                                                      ),),

                                                      
                                              ],
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(bottom:35.0),
                                          //   child: Opacity(opacity: 1,child: Image.asset('assets/360_F_352117727_d5h8yi1Smn7mxzYKte15ThuDlHzRuGkN-removebg-preview.png',height:50,width: 75,)),
                                          // ),
                                         

                                       ],
                                     ),
                                     
                                   ),
                                   
                                   
                                   
                                 ],
                               ),
                               
                              ]
                            ),
                          ),
                        
                          
                          Container(
                            child: Stack(
                              children:[
            
                                
                                
                                
                                
                                 Padding(
                                   padding: const EdgeInsets.only(top: 30),
                                   child: Card(
                                                              
                                        elevation: 50,
                                        shadowColor: Color.fromARGB(255, 0, 0, 0),
                                        color: Color.fromARGB(255, 0, 152, 160),
                                        child: SizedBox(
                                          width: 360,
                                          height: 140,
                                          // child: Stack(
                                          //   children:[  ,
                                            
                                          //   Padding(
                                          //     padding: const EdgeInsets.all(20.0),
                                              
                                          //     ),
                                          
                                          // ]),
                                          ),
                                                                ),
                                 ),
                          
                               Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(bottom: 400, left:20 ),
                                     child: Row(
                                    
                                      
                                       children: [
                                         ClipRRect
                                         ( borderRadius: BorderRadius.circular(20.0), 
                                          
                                          child: Opacity(opacity: 1,child: Image.asset('assets/MV5BNWRkMjA0NjItMmViYS00MDQyLTgyMWYtOWFmOTA4NmU5MjRjXkEyXkFqcGdeQXVyNDY4NjAxNTc@._V1_.jpg',height:160,width: 110,))),

                                          Padding(
                                            padding: const EdgeInsets.only(bottom:10.0, left: 10,top: 50),
                                            child: Column(
                                              children: [
                                                Text("Aspirants"
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 21,
                                                   fontWeight: FontWeight.w700,
                                                   
                                                  
                                                      ),
                                                      
                                                ),
                                                                                Text('''Geners : Drama '''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 10,
                                                   fontWeight: FontWeight.w700,
                                                   
                                                  
                                                      ),),
                                                      
                                                                                Text('''Cast : Naveen Kasturia, Abhilash 
       Thapliyal,Shivankit , Namita,
                      Sunny Hinduja.
 '''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 10,
                                                   fontWeight: FontWeight.w700,
                                                   
                                                  
                                                      ),),

                                                      
                                              ],
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(bottom:35.0),
                                          //   child: Opacity(opacity: 1,child: Image.asset('assets/360_F_352117727_d5h8yi1Smn7mxzYKte15ThuDlHzRuGkN-removebg-preview.png',height:50,width: 75,)),
                                          // ),
                                         

                                       ],
                                     ),
                                     
                                   ),
                                   
                                   
                                 ],
                               ),
                               
                              ]
                            ),
                          )
                        ],
                      ),
                     )
                     
            
                     
                   
                
            
                ],
                
            
            
                
                
                 ),
              ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
