import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/signin.dart';



class Success extends StatefulWidget{
  const Success({super.key});

  @override

  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {


 




  @override
  Widget build(BuildContext context) {
   
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                
                Opacity(opacity: 0.94,child: Image.asset('assets/Sign in (2).png',height:875,width: 500,fit: BoxFit.cover,)),
            
                  Form(

                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 399),
                              child: Column(
                                children: [Center(
                                   child: Opacity(opacity: 1,child: Image.asset('assets/Group 24.png',fit: BoxFit.cover,)),

                                ),const SizedBox(
                                    height: 40,
                                  ),
                                  Text('''  Password Reset
   Successfully !!''',
                                   style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                   
                                  
                                      ),),
                                
                                 
                              
                                  const SizedBox(
                                    height: 40,
                                  ),
            
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  signin()));
                    },
                     
            
                 
            
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
              ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Start now''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
            
            Container(
            child:   Center(
              child: Row(
                children: [
                  Text(
                        '''         New to Streamflex ?''',
                            style: GoogleFonts.ubuntu(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        
                                 ),
                  
              ),
              TextButton(onPressed: () {}, 
              child: Text(
                 "Sign Up",
                            style: GoogleFonts.ubuntu(
                        color: Color.fromARGB(255, 0, 114, 235),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        
                                 ),
              ) )],
                
              ),
            ),
            ),
            
            
                     
                 const SizedBox(
                  height: 15,
                 ),
                 
                    ]),
                            ),
                  ),
                  ]),
      ),
    ),),);
  }
}