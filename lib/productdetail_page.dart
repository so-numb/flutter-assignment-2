import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();

}

class _ProductDetailPageState extends State<ProductDetailPage>{

  List<String> editionList = ["1st", "2nd", "3rd", "4th", "5th", "6th"];
  String? _selectedEd;

  List<String> qtyList = ["1", "2", "3", "4", "5", "6"];
  String? _selectedQty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                   // margin: EdgeInsets.only(left: 30, right: 30),
                   height: 400,
                   width: double.infinity,
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
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
                             size: 60,
                            ),
                          Text("Image here", style: TextStyle(
                             fontSize: 15,
                             color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                Positioned(
                  top: 25,
                  left: 18,
                  child: Container(
                    // margin: EdgeInsets.only(top: 30,left: 30),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffffE0B2),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined,
                        size: 25,
                        color: Color(0xFFC45B3B),
                      ),
                    ),
                   ),
                ),
                Positioned(
                  top: 25,
                  right: 20,
                  child: Container(
                    // margin: EdgeInsets.only(top: 30,left: 30),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffffE0B2),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.bookmark,
                        size: 25,
                        color: Color(0xFFC45B3B),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  right: 20,
                  child: Container(
                    // margin: EdgeInsets.only(top: 30,left: 30),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Color(0xffffE0B2),
                        borderRadius: BorderRadius.circular(45)
                    ),
                    child: Center(
                      child: Text("\$125", style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFC45B3B),
                       ),
                      ),
                    )
                  ),
                ),

              ],
            ),
         Container(
           margin: EdgeInsets.only(top: 27, left: 27, right: 27),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Lorem Ipsum", style: TextStyle(
                 color: Colors.black,
                 fontSize: MediaQuery.of(context).size.width/20,
                 fontWeight: FontWeight.w900,
                ),
               ),
               SizedBox(
                 height: 10,
               ),

               Text("But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
             ],
            ),
           ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Edition", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                       ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: ShapeDecoration(
                          color: Color(0xffffE0B2),
                          shape: RoundedRectangleBorder(

                            side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              color: Color(0xFFC45B3B),
                            ),
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        child: DropdownButton(
                          dropdownColor: Color(0xffffE0B2),
                          style: TextStyle(
                            color: Color(0xFFC45B3B),
                          ),
                          hint: Text("Select"),
                            value: _selectedEd,
                          onChanged: (newValue){
                            setState(() {
                              _selectedEd = newValue;
                            });
                          },
                            items: editionList.map((edition){
                              return DropdownMenuItem(
                                child: Text(edition),
                                value: edition,
                              );
                             }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quantity", style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        width: 75,
                        decoration: ShapeDecoration(
                            color: Color(0xffffE0B2),
                            shape: RoundedRectangleBorder(

                                side: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Color(0xFFC45B3B),
                                ),
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                        child: DropdownButton(
                          dropdownColor: Color(0xffffE0B2),
                          style: TextStyle(
                            color: Color(0xFFC45B3B),
                          ),
                          hint: Text("Select"),
                          value: _selectedQty,
                          onChanged: (newValue){
                            setState(() {
                              _selectedQty = newValue;
                            });
                          },
                          items: qtyList.map((quantity){
                            return DropdownMenuItem(
                              child: Text(quantity),
                              value: quantity,
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 6),
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            minimumSize: Size(70, 70),
            backgroundColor: Color(0xFFC45B3B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.white,
              ),
              Text("  Add to Cart", style: TextStyle(
                fontSize: MediaQuery.of(context).size.width/30,
                fontWeight: FontWeight.w500,
                color: Color(0xffffE0B2),
               )
              )
            ],
          ),

        ),
      )
    );
  }

}