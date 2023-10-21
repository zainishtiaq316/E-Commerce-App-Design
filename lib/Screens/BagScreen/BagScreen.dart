import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/BagScreen/checkOutScreen.dart';

import 'package:ecommerceapp/widget/bagStyle.dart';
import 'package:ecommerceapp/widget/myPromoStyle.dart';
import 'package:ecommerceapp/widget/profilestyle.dart';
import 'package:flutter/material.dart';

import 'promocode.dart';

class BagScreen extends StatefulWidget {
  BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final promoCodeController = TextEditingController();
    Widget snapshotWidget() {
      return SingleChildScrollView(child: PromoCode());
    }

    void _showSnapshot() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(25),
            topStart: Radius.circular(25),
          ),
        ),
        builder: (BuildContext context) {
          return snapshotWidget();
        },
      );
    }

    final checkitOut = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => checkOut()));
        },
        child: Text(
          "CHECK OUT",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return buttonColor;
              }
              return buttonColor;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
    final promoCode = Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        obscureText: false,
        enableSuggestions: true,
        autocorrect: true,
        controller: promoCodeController,
        cursorColor: Colors.black45,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black.withOpacity(0.9)),
        textInputAction: TextInputAction.next,
        onTap: () {
          _showSnapshot();
        },
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white,
          hintText: "Enter your promo code",
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          hintStyle:
              TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 15),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 10, top: 10, bottom: 10),
                  child: Container(
                    child: Text(
                      "My Bag",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                bagStyle(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 10, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Total amount:",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Text(
                          "124\$",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 10, bottom: 10),
                    child: promoCode),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 10, bottom: 10),
                    child: checkitOut)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
