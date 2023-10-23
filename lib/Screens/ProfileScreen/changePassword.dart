import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _expiryDateController = TextEditingController();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _cardNumberController = TextEditingController();
    final TextEditingController _CVV = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    bool isDefaultPayment = false;
    final oldPassword = Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final NewPassword = Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final repeatRenewPassword = Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: '*',
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );

    final submit = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "ADD CARD",
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

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.width * 1.2,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 6,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password Change",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                oldPassword,
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                NewPassword,
                SizedBox(
                  height: 17,
                ),
                repeatRenewPassword,
                SizedBox(
                  height: 17,
                ),
                submit
              ],
            ),
          ),
        ),
      ),
    );
  }
}
