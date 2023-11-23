import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamflex/home.dart';
import 'package:streamflex/signin.dart';

final _createaccountkey= GlobalKey<FormState>();

class CreateAccount extends StatefulWidget{
  const CreateAccount({super.key});

  @override

  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {


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
                
                Opacity(opacity: 0.94,child: Image.asset('assets/Sign in (2).png',height:910,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)),

                  Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction, key: _createaccountkey,
                    child: Container(
                      
                              margin: const EdgeInsets.only(left: 35, right: 35,top: 357),
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
                                        
                                        hintText: "Enter Full Name",
                  
                                        
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
                                    obscureText: true,
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
                                  const SizedBox(
                                    height: 40,
                                  ),
                                   Center(
                  
                    
                    child: ElevatedButton(onPressed: () {
                      
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
                      child: Text('''Create an Account''',
                      style: GoogleFonts.poppins(
                      
                                   color: const Color.fromARGB(255, 245, 239, 239),
                                   fontSize: 25,
                                   fontWeight: FontWeight.w500,
                                   
                                  
                                      ),
                                       )),
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
                                   Container(
                   padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text:
                            '''     By creating an account, you agree to the Streamflex
                                        ''',
                                        children: [
                                          TextSpan(
                                                          text: '''

                 Conditions of use''',
                                              style: GoogleFonts.inter(
                        color: Color.fromARGB(255, 9, 54, 178),fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '''  and''',
                                                style: GoogleFonts.inter(
                        color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),
                  ),
                   TextSpan(
                    text: '''  Privacy Policy''',
                                                style: GoogleFonts.inter(
                        color: Color.fromARGB(255, 9, 54, 178),fontWeight: FontWeight.bold),
                  ),
                  ],
                       style: GoogleFonts.ubuntu(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
                                       
                                        
                      
                        ),
                      ),
                      
                 ) ,
                                  
                  
                               
                               
                    ),
                    ]),
                            ),
                  ),
        ]),
      ),
    ),),);
  }
}