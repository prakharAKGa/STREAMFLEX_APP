import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/download.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/homescreen.dart';
import 'package:streamflex/profile.dart';

class Detail extends StatefulWidget {
@override
_DetailState createState() => _DetailState();

}

class _DetailState extends State<Detail> {
@override
Widget build(BuildContext context) {
 
 return Scaffold(
 
   body: Stack(
     children: [
      
          Container(
            decoration: const BoxDecoration(
              gradient: AppGradients.primaryGradient,
              
          ),
          child:Stack(
            children: [
               Opacity(opacity: 1,child: Image.asset('assets/MONEY HEIST 2 (1).jpg',height:370,width: 490,fit: BoxFit.cover,)),

              Scaffold(
                backgroundColor: Colors.transparent,
                
                 appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                 
                  leading: IconButton(
              icon: const Icon(Icons.arrow_back),
                  onPressed:() {
                  Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const HomeScreen()));
               
                                              
              
                   
                   
               
                  }
                  )
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

                 
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 200, left:20,top: 300 ),
              child: Row(
             
               
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    border: Border.all(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
                        child: ClipRRect
                        ( 
                         
                        
                         
                         child: Opacity(opacity: 1,child: Image.asset('assets/MONEY HEIST (1).jpg',height:200,width: 138,))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                     
                     
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 80
                       ),
                        child: Column(
                         
                         children: [
                           
                           Text("Money Heist"
                                 
                               ,
                                  style: GoogleFonts.poppins(
                                                           
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700,
                                    
                                   
                                       ),
                                       ),
                                        Opacity(opacity: 1,child: Image.asset('assets/360_F_352117727_d5h8yi1Smn7mxzYKte15ThuDlHzRuGkN-removebg-preview.png',height:40,width: 140,)),
 Text("Series"
                                 
                               ,
                                  style: GoogleFonts.poppins(
                                                           
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    
                                   
                                       ),
                                       ),
                                        Opacity(opacity: 1,child: Image.asset('assets/Group 38.png',height:40,width: 140,)),
                         
                         ],
                         
                        ),
                      ),
                    ],
                  )
              ],
          ) ,
          
          ),
          

       Padding(
         padding: const EdgeInsets.only(top:550),
         child: Column(
           children: [
             Row(
              
              children: [
                 Opacity(opacity: 1,child: Image.asset('assets/PLAY NOW.png',height:40,width: 200,)),
        Opacity(opacity: 1,child: Image.asset('assets/DOWNLOAD.png',height:40,width: 200,)),
              ],
             ),
             SizedBox(height: 30,),
             Text('''This crime drama series featuring Alvaro Morte 
and ursula corbero was created by Alex Pina''',
 style: GoogleFonts.poppins(
                                                           
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    
                                   
                                       ),
),
 SizedBox(height: 20,),
  Text('''Cast'''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 30,
                                                   fontWeight: FontWeight.w600,
                                                   
                                                  
                                                      ),),
                                                       SizedBox(height: 20,),


 
             Text('''Álvaro Morte, Úrsula Corberó, 
Pedro Alonso, Itziar Ituño, Alba Flores. '''
                                                
,
                                                 style: GoogleFonts.poppins(
                                                                          
                                                   color: Color.fromARGB(255, 255, 255, 255),
                                                   fontSize: 13,
                                                   fontWeight: FontWeight.w600,
                                                   
                                                  
                                                      ),),


           ],
         ),
       )
  
  
 
     ]))]));


}

}
