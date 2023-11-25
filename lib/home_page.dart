import 'package:assignment_2/explore_page.dart';
import 'package:assignment_2/productdetail_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int current_index = 0;
  int index = 0;

  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),
      appBar: AppBar(
        backgroundColor: Color(0xffffcc80),
        toolbarHeight: 100,
        title: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Welcome back,", style: TextStyle(
                fontSize: 18,
                color: Colors.black
               ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Samantha William", style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/20,
                color: Colors.black,
                fontWeight: FontWeight.w900
               ),
              ),
            ),
          ],
        ),
        actions: [
          Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                      child: Icon(Icons.shopping_cart_rounded,
                      size: 32,
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(7.5)
                    ),
                    child: Center(
                      child: Text("1", style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                       ),
                      ),
                    ),
                  )
              ]
            ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            iconSize: 20,
            backgroundColor: Color(0xffffcc80),
            currentIndex: index,
            onTap: (value){
              index = value;
            },
            selectedItemColor: Color(0xFFC45B3B),
            unselectedItemColor: Colors.blueGrey,

            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
                       ),
                      );
                    },
                    icon: Icon(Icons.home),
                  ),
                label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.bookmark),
                  ),
                  label: "Saved"
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ExplorePage()
                       ),
                      );
                    },
                    icon: Icon(Icons.explore),
                  ),
                  label: "Explore"
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.account_circle_outlined),
                  ),
                  label: "Profile"
              ),
            ],
          ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23),
                  width: 300,
                  height: 45,
                  child: TextField(
                    controller: searchFieldController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffffE0B2),
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: IconButton(
                        onPressed: (){
                          searchFieldController.clear();
                        },
                        icon: Icon(Icons.clear),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color(0xFFC45B3B),
                              width: 2
                          )
                      ),
                      hintText: "Search books",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Color(0xFFC45B3B),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(
                    Icons.tune,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              width:20,
              height: 30,
            ),
            CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, current_index){
                  return Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Color(0xFFC45B3B),
                    ),
                    child: Center(
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
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  aspectRatio: 2.5,
                  onPageChanged: (index, reason){
                    setState(() {
                      current_index = index;
                    });
                  },
                ),
            ),
            DotsIndicator(
                dotsCount: 5,
              position: current_index.toDouble(),
              decorator: DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.black
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.menu_book),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Read", style: TextStyle(
                      fontSize: 12,
                      color: Colors.black
                     ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.book),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Stationary items", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.chrome_reader_mode_outlined),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("eBooks", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.person_2_outlined),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Authors", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.volume_up_outlined),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Audio books", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.lightbulb),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Get ideas", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.category),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Categories", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                     ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffffE0B2)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.question_mark),
                        color: Color(0xFFC45B3B),
                        iconSize: 20,
                      ),
                    ),
                    Text("Quiz", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Best Seller", style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width/20,
                  fontWeight: FontWeight.w900,
                 ),
                ),
                SizedBox(
                  width: 110,
                ),
                TextButton(
                    onPressed: (){},
                    child: Text("See All", style: TextStyle(
                      color: Color(0xFFC45B3B),
                      fontSize: 14,
                      fontWeight: FontWeight.w900
                     ),
                    )
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createSmallerContainer(title: "The Great Gatsby"),
                createSmallerContainer(title: "Brave New World"),
                createSmallerContainer(title: "Emma")
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget createSmallerContainer ({required String title}){
    return Container(
      margin: EdgeInsets.only(left: 2.5, right: 2.5, bottom: 5) ,
      height: 120,
      width: 120,
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
            size: 20,
          ),
          Center(
            child: Text("Image here", style: TextStyle(
                fontSize: 10,
                color: Colors.white
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 120,
            child: Align(
              alignment: Alignment(0,-0.5),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailPage()
                    )
                  );
                },
                child: Text("$title",
                  style: TextStyle(
                    fontSize: 11,
                    color:Colors.black ,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
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
