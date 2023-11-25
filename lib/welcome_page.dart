import 'package:flutter/material.dart';
import 'package:assignment_2/login_page.dart';
import 'package:assignment_2/signup_page.dart';
import 'package:assignment_2/explore_page.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                height: 50,
                  width: 50,
                  image: AssetImage("assets/icons/open-book.png"),
              ),
              Image(
                  height: 350,
                  width: 350,
                  image: AssetImage("assets/icons/reading-book.png")
              ),
              Text("Welcome!", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.black,
               ),
              ),
              Text("Create an account and get access to thousands\nof cool books!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 75,
                width: 330,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    backgroundColor: Color(0xFFC45B3B),
                    elevation: 15,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    )
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                        )
                      );
                    },
                    child: Text("Getting Started", style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width/16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                     ),
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 15,
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
                      child: Text("Log in", style: TextStyle(
                        color: Color(0xFFC45B3B),
                        fontSize: 16,
                        ),
                      )
                  )
                ],
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ExplorePage(),
                    )
                    );
                  },
                  child: Text("Skip for now>>", style: TextStyle(
                    color: Color(0xFFC45B3B),
                    fontSize: 15,
                  ),
                  )
              )
            ],
          ),
      ),
    );
  }

}