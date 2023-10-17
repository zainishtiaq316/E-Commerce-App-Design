import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/ShoppingScreen/kids.dart';
import 'package:ecommerceapp/Screens/ShoppingScreen/men.dart';
import 'package:ecommerceapp/Screens/ShoppingScreen/woman.dart';
import 'package:ecommerceapp/widget/categoriesStyle.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: textColor,
                  ),
                  onPressed: () {},
                )
              ],
              title: Text(
                "Categories",
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
            )),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              TabBar(
                unselectedLabelColor: textColor,
                labelColor: buttonColor,
                indicatorColor: buttonColor,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: 'Woman'),
                  Tab(text: 'Men'),
                  Tab(text: 'Kids'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [WomanTab(), MenTab(), KidsTab()],
                ),
              ),
            ],
          ),
        ));
  }
}
