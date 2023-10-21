import 'package:ecommerceapp/widget/myPromoStyle.dart';
import 'package:flutter/material.dart';

class PromoCode extends StatelessWidget {
  PromoCode({super.key});

  final _formKey = GlobalKey<FormState>();

  final promoController = TextEditingController();

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
      cursorColor: Colors.black45,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black.withOpacity(0.9)),
      textInputAction: TextInputAction.next,
      onTap: () {},
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
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 15),
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

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Icon(
              Icons.horizontal_rule,
              size: 48,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 10, top: 20, bottom: 30),
              child: promoCode),
          Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 10, top: 10, bottom: 10),
              child: Container(
                child: Text(
                  "Your Promo Codes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              )),
          promoStyle()
        ],
      ),
    );
  }
}
