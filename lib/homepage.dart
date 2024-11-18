
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hive/my_curd.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        floatingActionButton:
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add,
            color: Colors.white,
            size: 32,),
          shape: CircleBorder(),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Color(0xfef3f8fb),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 10,
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade700,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home,text: "Home",),
              GButton(icon: Icons.menu,text: "menu",),
              GButton(icon: Icons.turned_in,text: "favourite",),
              GButton(icon: Icons.settings,text: "settings",),
            ],
          ),
        ),

        body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child:Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                        ),
                        Text("Product List",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfe46464a),
                          ),
                        ),
                        Icon(FluentSystemIcons.ic_fluent_search_regular,size: 27, color: Color(
                            0xfe474646),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                          boxShadow:[
                            BoxShadow(
                                offset: Offset(0, 4),
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 10
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(FluentSystemIcons.ic_fluent_filter_filled,color: Colors.grey[400],size: 26,),
                                SizedBox(width: 10,),
                                Text("Filter",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 19,
                                  ),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("Sort by",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 19,
                                  ),),
                                SizedBox(width: 6,),
                                Transform.rotate(
                                    angle:3.1416*1.5,
                                    child:  Icon(Icons.arrow_back_ios_outlined,color: Colors.grey[600],)),

                                SizedBox(width: 20,),
                                Icon(FluentSystemIcons.ic_fluent_apps_list_filled,color: Colors.grey[900],),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                )
            ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyCurd(boxColor: Colors.white, imageBacground: Color(0xb6d0fbf8), imagePath: "lib/images/maleone.png", titleText: "male style", desCription: "Gucci", price: "\$20"),
              MyCurd(boxColor: Colors.white, imageBacground: Color(0xb6d8d2e4), imagePath: "lib/images/female.png", titleText: "female style", desCription: "prada", price: "\$70"),
            ],
          ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCurd(boxColor: Colors.white, imageBacground: Color(0xb6d0fbf8), imagePath: "lib/images/male.png", titleText: "male style", desCription: "Gucci", price: "\$20"),
                MyCurd(boxColor: Colors.white, imageBacground: Color(0xb6d8d2e4), imagePath: "lib/images/femaletwo.png", titleText: "female style", desCription: "prada", price: "\$70"),
              ],
            ),
          ],
        ),
      )



    );
  }
}
