import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/paymentModel.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/widget/ShippingStyle.dart';
import 'package:ecommerceapp/widget/atmCard.dart';
import 'package:ecommerceapp/widget/paymentStyle.dart';
import 'package:flutter/material.dart';

class paymentMethods extends StatefulWidget {
  const paymentMethods({super.key});

  @override
  State<paymentMethods> createState() => _paymentMethodsState();
}

class _paymentMethodsState extends State<paymentMethods> {
  void selectPayment(PaymentModel selectPayment) {
    Navigator.pop(context, selectPayment);
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
            "Payment methods",
            style: TextStyle(
                color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: paymentStyle(
          onSelectPayment: selectPayment,
        ));
  }
}
