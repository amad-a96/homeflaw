
import 'package:flutter/material.dart';
import 'package:homeflaw/screens/appview.dart';
import 'package:homeflaw/screens/login_screen.dart';
import 'package:homeflaw/services/auth_services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String name = 'user name';
  String? password;
  String? theLoggedInUser;

 final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('signup'),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Text('Welcome $name'),
              Form(
                key: _formKey,
                  child: Column(
                children: [
                  // Text('the logged in user: $theLoggedInUser'),

                  //user name
                  TextFormField(
                   validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
                    controller: _userNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'email',
                      hintText: 'email@something.com',
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  //passsword

                  SizedBox(height: 15),

                  TextFormField(
                
                    validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'password is required';
              }else if (  value.length < 6 ) {
                return 'password must be at least 6 characters';
              }
                
              return null;
              
            },
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                       icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),         
             

                  ElevatedButton.icon(
                    onPressed: () async {
                      setState(() {
                        name = _userNameController.value.text;
                        password = _passwordController.value.text;
                      });
                      name = name.trim(); //remove spaces
                      name = name.toLowerCase(); //convert to lowercase
 if (_formKey.currentState!.validate()) {
                
                  await AuthServices()
                          .signupWithEmailAndPassword(name, password!)
                          .then((value) {
                        setState(() {
                          theLoggedInUser = value!.user!.uid;
                        });
                        
                      });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppView()));
                }
                      
                    },
                    icon: Icon(
                      Icons.login,
                    ),
                    label: Text(
                      'sing up',
                    ),
                   
                  ),

                  //error
                 
                  // SizedBox(
                  //   height: 50,
                  // ),
TextButton(onPressed:  () { Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));}, child: Text('log in?')),
                ],
              ),
              ),
              //already have account?
           // Text('Already have an account? + $singup'),
               
            ],
          ),
        ),
      ),
    );
  }
}