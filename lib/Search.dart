import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:streamflex/download.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/homescreen.dart';
import 'package:streamflex/profile.dart';

class Search extends StatefulWidget {
@override
_SearchState createState() => _SearchState();


}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.search,color: Colors.white,),
        title: const TextField(
          decoration: InputDecoration(
            hintText: "Search for a show, movie, series, etc",
            hintStyle: TextStyle(color: Colors.white)
          ),
        ),
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
              onPressed: () {  },
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
       body: Stack(
     children: [
      
          Container(
            decoration: const BoxDecoration(
              gradient: AppGradients.primaryGradient,
              
          ),


       ),
       Container(
        child: Column(
          children:<Widget> [
          Padding(
            padding: const EdgeInsets.only(right:220.0,top: 17),
            child: const Text("Popular Searches",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),

           SizedBox(
                                              height: 650,
                                              child: FutureBuilder<QuerySnapshot>(
                                                future: FirebaseFirestore.instance.collection('search').get(),
                                                builder: (context,snapshot){
                                                   if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
                    }
             if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
                List<Widget> imageWidgets = snapshot.data!.docs.map((document) {
                // Assuming 'imageUrl' is the field that contains the image URL
                dynamic imageUrl = document['url'];
                 // Check the type and convert it to a list if needed
              
                   
            
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[ 
                    Image.network(imageUrl.toString()
                    
                    ,height: 100.0,
                    width: 200.0,
                    fit: BoxFit.fitWidth,
                    
                    ),
          ],
                );
                  }).toList();
                
                                     
                                                  
                                                  return Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: ListView.builder(
                                                     itemCount: imageWidgets.length,
                                                     
                                                                 
                                                      scrollDirection:Axis.vertical,
                                                        itemBuilder: (BuildContext context, int index) { 
                                                          return GestureDetector(
                                                             onTap: null,
                                                             child: Container(

                                                              child: 
                                                             SizedBox(
                                                               child: Row(
                                                                children:<Widget> [
                                                                  SizedBox(
                                                                    height: 120,
                                                                    width: 150,
                                                                    child: imageWidgets[index], 
                                                                    
                                                                  ),
                                                                  Container(
                                                                    
                                                                    padding: EdgeInsets.only(left: 20),
                                                                    width: 100.0,
                                                                    child: Text(
                                                                      (snapshot.data!.docs[index].data() as Map<String, dynamic>)['name'] ?? 'Default Names',
                                                                      style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 11,
                                                                        fontWeight: FontWeight.bold
                                                                      ),
                                                                                                               
                                                                                                               
                                                                      
                                                                    ),
                                                                                                               
                                                                    
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(left:100),
                                                                    child: Icon(Icons.play_arrow,color:Colors.grey),
                                                                  )
                                                                ],
                                                               ),
                                                             )),
                                                          );
                                                         },
                                                        
                                                        
                                                           
                                                    
                                                        
                                                              
                                                     
                                                      ),
                                                  );
                                                
                                                
                                                  
                                                }
                                              ),
                                             )
          
          ],
        ),
       )
       
       ]));
  
  }



}