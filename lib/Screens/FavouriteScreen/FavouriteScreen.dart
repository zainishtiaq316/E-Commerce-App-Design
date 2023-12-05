import 'package:ecommerceapp/widget/favAppBarStyle.dart';
import 'package:ecommerceapp/widget/favouriteStyle.dart';
import 'package:ecommerceapp/widget/favouritegridStyle.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  bool isStyle1 = true;

  Widget currentScreen = favouriteStyle();
  Widget currentIcon = Icon(Icons.list);

  void toggleStyle() {
    setState(() {
      isStyle1 = !isStyle1;
      // currentScreen = isStyle1 ? favouritegridStyle() : favouriteStyle();
      //currentIcon = isStyle1 ? Icon(Icons.grid_on) : Icon(Icons.list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  centerTitle: true,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  child: Text(
                    "Favorites",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                favAppBarStyle(),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: () {}, child: Icon(Icons.filter_list)),
                            Text(
                              "Filters",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {}, child: Icon(Icons.swap_vert)),
                          Text(
                            "Price: lowest to high",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            toggleStyle();
                          },
                          child: currentIcon)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: currentScreen,
      ),
    );
  }
}
