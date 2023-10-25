import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/widget/cancelledStyle.dart';
import 'package:ecommerceapp/widget/myOrderStyle.dart';
import 'package:ecommerceapp/widget/processingStyle.dart';
import 'package:flutter/material.dart';

class MyOrderedScreen extends StatefulWidget {
  MyOrderedScreen({super.key});

  @override
  State<MyOrderedScreen> createState() => _MyOrderedScreenState();
}

class _MyOrderedScreenState extends State<MyOrderedScreen> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              child: Container(
                child: Text(
                  "My Orders",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentTabIndex = 0;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.035,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: _currentTabIndex == 0
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Delivered",
                            style: TextStyle(
                                color: _currentTabIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentTabIndex = 1;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.035,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: _currentTabIndex == 1
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Processing",
                            style: TextStyle(
                                color: _currentTabIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentTabIndex = 2;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.height * 0.035,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: _currentTabIndex == 2
                              ? Colors.black
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                color: _currentTabIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_currentTabIndex == 0)
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: myOrderStyle()),
                if (_currentTabIndex == 1)
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: processingStyle()),
                if (_currentTabIndex == 2)
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: cancelledStyle()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
