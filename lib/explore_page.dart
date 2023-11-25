import 'package:flutter/material.dart';
import 'package:assignment_2/signup_page.dart';
import 'package:assignment_2/welcome_page.dart';

class ExplorePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffffcc80),
      appBar: AppBar(
        toolbarHeight: 120,
        // backgroundColor: Colors.blue,
        backgroundColor: Color(0xffffcc80),
        title: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text("Explore", style: TextStyle(
                  fontSize: 25,
                 ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Select a category", style: TextStyle(
                  fontSize: 15
                 ),
                ),
              )
            ],
          ),
      ),
      endDrawer: Drawer(

        backgroundColor: Color(0xFFC45B3B),
        child: Expanded(
          child: ListView(
            children: [
              SizedBox(
                height: 131,
                child: DrawerHeader(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SignUpPage())
                            );
                          },
                          icon: Icon(Icons.account_circle,
                            size: 50,
                          ),
                          color: Colors.white,
                        ),
                        Text("Sign up/Log in",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),
                        )
                      ],
                    )
                ),
              ),
              ListTile(
                title: Text("Cart",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xffffcc80),
                  size: 15,
                ),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
              ),
              ListTile(
                title: Text("Saved",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
                leading: Icon(
                  Icons.bookmark,
                  color: Color(0xffffcc80),
                  size: 15,
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
              ),
              ListTile(
                title: Text("Settings",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Color(0xffffcc80),
                  size: 15,
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
              ),
              ListTile(
                title: Text("Exit",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Color(0xffffcc80),
                  size: 15,
                ),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomePage()
                   )
                  );
                },
              ),
            ],
          ),
        ),
      ),
          body:ListView(
            shrinkWrap: true,
            children: [
              containerWithTitle(title: "Biography"),
              containerWithTitle(title: "Science Fiction"),
              containerWithTitle(title: "Mystery"),
              containerWithTitle(title: "Spiritual"),
              containerWithTitle(title: "Horror"),
            ]
          )
    );
  }
  Widget containerWithTitle({required String title}){
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
      height: 210,
      // width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Color(0xFFC45B3B),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.image_outlined,
            color: Colors.white,
            size: 50,
          ),
          Text("Image here", style: TextStyle(
              fontSize: 10,
              color: Colors.white
          ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 45,
            width: 450,
            child: Align(
              alignment: Alignment(-0.9,0),
              child: Text("$title",
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.black ,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffffE0B2),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(11), bottomRight: Radius.circular(11)
              ),
            ),
          )
        ],
      ),
    );

  }

}