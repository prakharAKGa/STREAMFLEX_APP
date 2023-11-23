import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:streamflex/forgot.dart';
import 'package:streamflex/passwordreset.dart';
import 'package:streamflex/signin.dart';



class Verify extends StatefulWidget{
  const Verify({super.key});

  @override

  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {


 




 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                
                Opacity(opacity: 0.91,child: Image.asset('assets/Sign in (2).png',height:867,width: 500,fit: BoxFit.cover,)),

                  Form(
                    
                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 357),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  
                                  Text('''Verify Your Email''',
                                  style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        
                                 ),
                               
                               
),
SizedBox(
  height: 20,
),
Text('''Please enter the 4 digit OTP sent to 
                   your Email address''',
                                  style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        
                                 ),
                               
                               
),
SizedBox(
  height: 34,
 
  
),
 OTPTextField(
   width: MediaQuery.of(context).size.width,
    length: 4,
    
    textFieldAlignment: MainAxisAlignment.spaceAround,
 fieldWidth: 40,

 fieldStyle: FieldStyle.box, 
 
 otpFieldStyle: OtpFieldStyle(
  backgroundColor: Colors.white,
   borderColor: Color.fromARGB(255, 122, 2, 2),
                  focusBorderColor: Color.fromARGB(255, 249, 249, 249),
  ),
 
 
            outlineBorderRadius: 15,
            style: TextStyle(fontSize: 17,
            color: Colors.black),
 
 
   
 ),




                                 
                                 
                                 
                                  const SizedBox(
                                    height: 40,
                                  ),
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Reset()));
                    },
                     

                 

                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
    ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Verify''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       
                                       )
                                       )
                                       ,
                      ),
                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child:
                                        Row(
                                          children: [
                                            Text("Didn't Received ?",style:  GoogleFonts.inter(
                                              
                      
                                       color: Color.fromARGB(255, 246, 246, 246),
                                       fontSize: 15,
                                       
                                       
                                      
                                              ),),
                                            TextButton(onPressed: () { 
                                                                       Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Forgot()));
                    },
                                             
                                            child:Text("Resend" ,
                                            style:  GoogleFonts.inter(
                                              
                      
                                       color: Color.fromARGB(255, 255, 0, 13),
                                       fontSize: 15,
                                       
                                       
                                      
                                              ),)
                                              ),
                                          ],
                                        ),
                                        

                                                  ),
                                                   const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text("or",
                                                  style:  GoogleFonts.inter(
                                              
                      
                                       color: Color.fromARGB(255, 237, 237, 237),
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold
                                       
                                       
                                      
                                              )),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  
 ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const signin()));
                    },
                     

                 

                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
    ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Sign in with your password''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 18,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       
                                       )
                                       )
                                       ,
                                                 
                       
                
                  
                  
                    ]),
                            ),
                  ),
    ]),
  ))));}
}