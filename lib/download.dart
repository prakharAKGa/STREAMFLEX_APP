import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/create.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/homescreen.dart';

class down extends StatefulWidget {
@override
_downState createState() => _downState();


}

class _downState extends State<down> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
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
              onPressed: () {  },
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
                                        builder: (context) => const CreateAccount()));
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
           child: Padding(
             padding: const EdgeInsets.only(top:320.0),
             child: Column(
              
               children: [
                 Center(child: Opacity(opacity: 1,child: Image.asset('assets/Download Page Icon.png',height:96,width: 100,fit: BoxFit.cover,))),
            SizedBox(height: 20,)
            , Text( ''' Movies and TV shows that you 
       download appear here.''',
                      style:   GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 245, 245, 245),
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                                
                                         ),
              
             ) 
              
               ],
             ),
           ),

                  



       ),
      
       
       ]));
  
  }



}