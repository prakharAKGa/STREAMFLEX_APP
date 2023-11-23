import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/create.dart';
import 'package:streamflex/gredient.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.primaryGradient,
          
        ),
        
        child: Scaffold(
           backgroundColor: Colors.transparent,
           appBar: AppBar(

        title: Text(''),
         backgroundColor: Colors.transparent,
        elevation: 0,
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button functionality here
            Navigator.pop(context);
          },
        ),
      ),
          body: Center(
            child: Column(
              children: [
                Text(
                  'Choose Language',
                  style:   GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                            
                                     ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                  children: [
                    ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CreateAccount()));
                    },
                     
            
                 
            
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Adjust the radius to make it circular
              ),
                          minimumSize: const Size(0, 85),
                       
                       backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                      child: Text('''English''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
                                       ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CreateAccount()));
                    },
                     
            
                 
            
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Adjust the radius to make it circular
              ),
                          minimumSize: const Size(0, 85),
                       
                       backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                      child: Text('''English''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
                                       ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CreateAccount()));
                    },
                     
            
                 
            
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Adjust the radius to make it circular
              ),
                          minimumSize: const Size(0, 85),
                       
                       backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                      child: Text('''English''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
                    
                  ],
                )

              ],
            ),
           
          ),
          
        ),
      ),
    );
  }
}
