import 'package:flutter/material.dart';
import 'package:assignment_2/login_page.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String? fieldValueName;
  String? fieldValueEmail;
  String? fieldValuePassword;
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),
      appBar: AppBar(
        backgroundColor: Color(0xffffcc80),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment(0,5),
          child: Column(
            children: [
              Image(
                height: 50,
                width: 50,
                image: AssetImage("assets/icons/open-book.png"),
              ),
              SizedBox(
                height: 25,
              ),
              Text("Sign Up Now", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              ),
              Text("Please fill in the details to create an account",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 300,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: nameTextController,
                        validator: (name){
                          if(name!.isEmpty){
                            return "Please enter name";
                          }
                          return null;
                        },
                        onChanged: (name){
                          fieldValueEmail = name;
                        },
                        decoration: InputDecoration(
                            label: Text("Full name"),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter full name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFC45B3B),
                                    width: 2
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.5
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFF6C0C1D),
                                    width: 2
                                )
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailTextController,
                        validator: (email){
                          if(email!.isEmpty){
                            return "Please enter email";
                          }
                          return null;
                        },
                        onChanged: (email){
                          fieldValueEmail = email;
                        },
                        decoration: InputDecoration(
                            label: Text("Email"),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter email address",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFC45B3B),
                                    width: 2
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.5
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFF6C0C1D),
                                    width: 2
                                )
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: passwordVisibility,
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordTextController,
                        validator: (password){
                          if(password!.isEmpty){
                            return "Please enter password";
                          }
                          return null;
                        },
                        onChanged: (password){
                          fieldValuePassword = password;
                        },
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  passwordVisibility = !passwordVisibility;
                                });
                              },
                              icon: Icon(
                                passwordVisibility? Icons.visibility_off:Icons.visibility),
                              color: Colors.blueGrey,
                            ),
                            label: Text("Password"),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            helperText: "Password must be at least 6 characters",
                            helperStyle: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 12,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFC45B3B),
                                    width: 2
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.5
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFF6C0C1D),
                                    width: 2.5
                                )
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 72,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 23, right: 23),
                        backgroundColor: Color(0xFFC45B3B),
                        elevation: 12,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        )
                    ),
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                      }
                      else{
                      }
                    },
                    child: Text("Create account", style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                         )
                        );
                      },
                      child: Text("Log In", style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFC45B3B),
                      ),
                      )
                  )
                ],
              ),
              Text("Connect with us on",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {}, // Image tapped
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      fit: BoxFit.cover, // Fixes border issues
                      width: 25,
                      height: 25,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: () {}, // Image tapped
                    child: Image.asset(
                      'assets/icons/twitter.png',
                      fit: BoxFit.cover, // Fixes border issues
                      width: 25,
                      height: 25,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: () {}, // Image tapped
                    child: Image.asset(
                      'assets/icons/google-plus.png',
                      fit: BoxFit.cover, // Fixes border issues
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

}