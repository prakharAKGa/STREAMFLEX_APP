import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/create.dart';
import 'package:streamflex/forgot.dart';
import 'package:streamflex/home.dart';

final _signinkey= GlobalKey<FormState>();

class signin extends StatefulWidget{
  const signin({super.key});

  @override

  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {


   RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
 }

   final _email = TextEditingController();
  final _name = TextEditingController();
    final _password = TextEditingController();

    @override
void dispose() {
  _email.dispose();
  _password.dispose();
  _name.dispose();
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
                
                Opacity(opacity: 0.94,child: Image.asset('assets/Sign in (2).png',height:875,width: 500,fit: BoxFit.cover,)),
            
                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction, key: _signinkey,
                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 399),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: _name,
                                    validator:  (nam){
                                  if(nam == null || nam.isEmpty){
                                    return "Required" ;
                                  }
                                  else if(nam!.length <3){
                                    return "Enter the correct Name ";
                                  }
                                },
                                
                                    
                                    style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w600),
                                    
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.person_3_outlined),
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
                                        
                                        hintText: "Enter Username",
                  
                                        
                                        hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        fontFamily:AutofillHints.organizationName
                                      
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                             width: 3,
                                            color: Color.fromARGB(255, 190, 8, 8),
                                          ),
                                        )),
                                  ),
                                 
                                  const SizedBox(
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
                                        hintText: "Password",
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
                                  Row(
                                    
                                    children: [ 
                                  
         
                                      
                                      
                                      Container(
                                        margin: EdgeInsets.only(left: 174),
                                        child:
                                        TextButton(onPressed: () { 
                                                                   Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Forgot()));
                    },
                                         
                                        child:Text(" Forgot Password ?" ,
                                        style:  GoogleFonts.inter(
                                          
                      
                                       color: Color.fromARGB(255, 255, 0, 13),
                                       fontSize: 15,
                                       
                                       
                                      
                                          ),))
                                                  ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
            
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CreateAccount()));
                    },
                     
            
                 
            
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Adjust the radius to make it circular
              ),
                          minimumSize: const Size(370, 60),
                       
                       backgroundColor: const Color.fromARGB(255, 0, 114, 235),
                      ),
                      child: Text('''Sign in''',
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
            
            
                        Container(
                   padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          '''          or
 continue with''',
                            style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        fontSize: 10,
                        
                                 ),
                                
                        ),
                      ),
                      
                 ) ,
                 const SizedBox(
                  height: 15,
                 ),
                   Center(
                    child: GestureDetector(
            onTap: () {
                      
                                             Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
              // Handle button tap
            },
            child: Image.asset(
              'assets/Google__G__Logo.jpg',
              width: 40,
              height: 40,
            ),
            )
            ,
                   ),
                    ]),
                            ),
                  ),
                  ]),
      ),
    ),),);
  }
}