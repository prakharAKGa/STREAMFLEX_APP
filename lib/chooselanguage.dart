import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/create.dart';
import 'package:streamflex/download.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/homescreen.dart';
import 'package:streamflex/profile.dart';
import 'package:streamflex/signin.dart';


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
            Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const signin()));
          },
        ),
      ),
      bottomNavigationBar: Container(
      
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          
          backgroundColor: Color.fromARGB(255, 57, 106, 155),
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
              icon: Icon(
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
           
            
      
          ], ),
      ),
      
          body: Container(
            margin: EdgeInsets.only(top:160),
            
            child: Center(
             
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
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                 
                    children: [
                      ElevatedButton(onPressed: () {
                        
                                               Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeScreen()));
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
                            minimumSize: const Size(139, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''हिन्दी''',
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''বাংলা''',
                        style: GoogleFonts.poppins(
                        
                                     color: const Color.fromARGB(255, 245, 239, 239),
                                     fontSize: 25,
                                     fontWeight: FontWeight.w500,
                                     
                                    
                                        ),
                                         )),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''తెలుగు''',
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''తెలుగు''',
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''தமிழ்''',
                        style: GoogleFonts.poppins(
                        
                                     color: const Color.fromARGB(255, 245, 239, 239),
                                     fontSize: 25,
                                     fontWeight: FontWeight.w500,
                                     
                                    
                                        ),
                                         )),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''मराठी''',
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
                            minimumSize: const Size(135, 85),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text('''ಕನ್ನಡ''',
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
                            minimumSize: const Size(0, 80),
                         
                         backgroundColor: Color.fromARGB(255, 112, 162, 166)                  ),
                        child: Text("മലയാളം",
                        style: GoogleFonts.poppins(
                        
                                     color: const Color.fromARGB(255, 245, 239, 239),
                                     fontSize: 20,
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
      ),
    );
  }
}
