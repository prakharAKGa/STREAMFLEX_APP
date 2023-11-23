import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/verify.dart';

final _forgotkey= GlobalKey<FormState>();

class Forgot extends StatefulWidget{
  const Forgot({super.key});

  @override

  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {


   RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 }


   final _email = TextEditingController();
 

    @override
void dispose() {
  _email.dispose();
  
  super.dispose();
}



 

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
                    autovalidateMode: AutovalidateMode.onUserInteraction, key: _forgotkey,
                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 357),
                              child: Column(
                                children: [
                                  SizedBox(height: 130,),
                                  
                                  Text('''Forgot Password''',
                                  style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        
                                 ),
                               
                               
),
SizedBox(
  height: 20,
),
Text('''Please enter your Email Address to 
                   receive the OTP''',
                                  style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        
                                 ),
                               
                               
),
SizedBox(
  height: 40,
),

                                 
                                  TextFormField(
                                    controller: _email,
                                    keyboardType: TextInputType.emailAddress,
                                    
                                    validator: (emi){
                                      
                                    if(emi == null || emi.isEmpty){
                                      return "Required" ;
                                    }
                                    else if(emi.length <3){
                                      return "Enter the correct Email ";
                                    }
                                     var rx = RegExp("\b*@akgec\.ac\.in\$",caseSensitive: false);
                                       return rx.hasMatch(emi) ? null : 'Invalid domain name';
                                  },
                                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600),
                                    decoration: InputDecoration(
                                  
                                      prefixIcon: const Icon(Icons.email),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(255, 0, 114, 235),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          
                                          
                                          borderSide: const BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(255, 190, 8, 8),
                                          ),
                                        ),
                                        hintText: 'Enter Email',
                                        hintStyle: const TextStyle(color:Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )),
                                  ),
                                 
                                  const SizedBox(
                                    height: 40,
                                  ),
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Verify()));
                    },
                     

                 

                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
    ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Send OTP''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
                      ),
                       
                
                  
                  
                    ]),
                            ),
                  ),
    ]),
  ))));}
}