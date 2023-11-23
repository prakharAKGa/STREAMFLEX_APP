import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/Success.dart';

final _Resetkey= GlobalKey<FormState>();

class Reset extends StatefulWidget{
  const Reset({super.key});

  @override

  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {


   RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 }


   final _password = TextEditingController();
 

    @override
void dispose() {
  _password.dispose();
  
  super.dispose();
}
bool _passwordVisible = false;

@override
  void initState() {
    
    var _passwordVisible;
  }



 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                
                Opacity(opacity: 0.91,child: Image.asset('assets/Sign in (2).png',height:MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)),

                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction, key: _Resetkey,
                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 357),
                              child: Column(
                                children: [
                                  SizedBox(height: 130,),
                                  
                                  Text('''Password Reset''',
                                  style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        
                                 ),
                               
                               
),
SizedBox(
  height: 20,
),

                                 
                                   TextFormField(
                                    controller: _password,
                                    validator: (pass){
                                      if (pass!.isEmpty) {
                              return 'Please enter password';
                            } else {
                              if (!regex.hasMatch(pass)) {
                                return 'Enter valid password';
                              } else {
                                return null;
                              }
                            }
                                    },
                                    
                                    
                                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600),
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.password),
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
                                        hintText: "Enter New Password",
                                        suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
                                        hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )),
                                  ),
                             
                                 
                                  const SizedBox(
                                    height: 40,
                                  ),
                                   TextFormField(
                                    controller: _password,
                                    validator: (pass){
                                      if (pass!.isEmpty) {
                              return 'Please enter password';
                            } else {
                              if (!regex.hasMatch(pass)) {
                                return 'Enter valid password';
                              } else {
                                return null;
                              }
                            }
                                    },
                                    
                                    
                                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600),
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.password),
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
                                        hintText: "Confirm New Password",
                                        suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
                                        hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Success()));
                    },
                     

                 

                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
    ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Reset''',
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