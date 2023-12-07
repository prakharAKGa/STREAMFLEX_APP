import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:streamflex/gredient.dart';
import 'package:streamflex/homescreen.dart';
import 'package:streamflex/signin.dart';
import 'package:streamflex/user_auth/google_sign.dart';

class UserProfileScreen extends StatefulWidget {
  

  
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}
  final user = FirebaseAuth.instance.currentUser!;
class _UserProfileScreenState extends State<UserProfileScreen> {
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      
      
               
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.primaryGradient,
          
        ),   
          

        child: Scaffold(
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
              onPressed: () {  },
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
                
               
              
              onPressed: () {  },
            ),
            label: ""
            ),
           
            
      
          ], ),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (user != null)
                  CircleAvatar(
                    backgroundImage: NetworkImage(user?.photoURL ?? ""),
                    radius: 50,
                  ),
                SizedBox(height: 16),
                if (user != null)
                  Text("Name: ${user?.displayName ?? 'N/A'}"),
                if (user != null)
                  Text("Email: ${user?.email ?? 'N/A'}"),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    UserCredential? userCredential = await signInWithGoogle();
              
                    
                    setState(() {
                      user = userCredential?.user;
                    });
                  },
                  child: Text("Profile"),
                  
                ),
                 Center(
        child: MaterialButton(onPressed: () async {
          await
         logout();
       Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => signin()), // Replace SignInScreen() with the page you want to navigate to
      );

    },
    color: Colors.amber,
     child: const Text('sign out')
     )),
              ],
            ),
          ),
        ),
      ),
       
    );
  }
}
