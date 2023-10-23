import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/Screens/BagScreen/AddShippingAddress.dart';
import 'package:ecommerceapp/widget/ShippingStyle.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  void selectShippingAddress(ShippingModel selectedAddress) {
    Navigator.pop(context, selectedAddress);
  }

  @override
  Widget build(BuildContext context) {
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
          "Shipping Addresses",
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddShippingAddress()));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShippingStyle(
              onSelectShippingAddress: selectShippingAddress,
            )
          ],
        ),
      ),
    );
  }
}
