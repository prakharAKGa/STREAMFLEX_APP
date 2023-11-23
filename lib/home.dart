import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/create.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override

  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                
                Opacity(opacity: 0.94,child: Image.asset('assets/first_man_movie_4k_8k-1080x1920.jpg',height:867,width: 500,fit: BoxFit.cover)),

                 Padding(
                   padding: const EdgeInsets.only(left: 164,top: 50),
                   child: Image.asset('assets/clapperboard 1.png',height:80,width: 80,fit: BoxFit.fill,),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 125),
                    child: Image.asset('assets/STREAMFLEX.png',height:140,width: 170,fit: BoxFit.scaleDown),
                  ),
                 Container(
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.only(top: 337,left: 15),
                      child: Center(
                        child: Text(
                          'Welcome',
                            style: GoogleFonts.anton(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        
                                 ),
                                
                        ),
                      ),
                    ),
                    Container(
                   padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          '''       Watch the latest movies,
unlimited TV shows and more.''',
                            style: GoogleFonts.andadaPro(
                        color: Color.fromARGB(255, 245, 245, 245),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                                 ),
                                
                        ),
                      ),
                      
                 ) ,
                 const SizedBox(
                  height: 200,
                 ),
                  Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreateAccount()));
                    },
                     

                 

                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
    ),
                          minimumSize: Size(370, 50),
                       
                       backgroundColor: Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Let's Start''',
                      style: GoogleFonts.poppins(
                      
                                   color: Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w400,
                                   
                                  
                                      ),
                                       )
                      ),


                  ),
               
                  ]),
                 ),
                 
                 

              ]),
          ),
        ),
      ),
    );
  }
}