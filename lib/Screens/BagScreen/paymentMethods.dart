import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/paymentModel.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/Screens/BagScreen/addPayment.dart';
import 'package:ecommerceapp/Screens/BagScreen/promocode.dart';
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
    Widget snapshotWidget() {
      return SingleChildScrollView(child: AddPayment());
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

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.black,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          onPressed: () {
            _showSnapshot();
          },
        ),
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
