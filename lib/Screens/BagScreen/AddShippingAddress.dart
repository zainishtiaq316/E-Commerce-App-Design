import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class AddShippingAddress extends StatefulWidget {
  const AddShippingAddress({super.key});

  @override
  State<AddShippingAddress> createState() => _AddShippingAddressState();
}

class _AddShippingAddressState extends State<AddShippingAddress> {
  @override
  Widget build(BuildContext context) {
    final name = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Full name',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final address = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Address',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final city = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'City',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final state = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'State/Province/Region',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final zipCode = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Zip Code (Postal Code)',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final country = Container(
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
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Country',
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
          "SAVE ADDRESS",
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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Add Shipping Address",
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                children: [
                  name,
                  SizedBox(
                    height: 15,
                  ),
                  address,
                  SizedBox(
                    height: 15,
                  ),
                  city,
                  SizedBox(
                    height: 15,
                  ),
                  state,
                  SizedBox(
                    height: 15,
                  ),
                  zipCode,
                  SizedBox(
                    height: 15,
                  ),
                  country,
                  SizedBox(
                    height: 20,
                  ),
                  submit
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
