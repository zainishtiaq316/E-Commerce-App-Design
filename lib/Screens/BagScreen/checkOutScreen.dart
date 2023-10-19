import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/shippingAddressmodel.dart';
import 'package:ecommerceapp/Screens/BagScreen/paymentMethods.dart';
import 'package:ecommerceapp/Screens/BagScreen/shippingAddress.dart';
import 'package:ecommerceapp/widget/atmCard.dart';
import 'package:ecommerceapp/widget/checkoutLastDetail.dart';
import 'package:ecommerceapp/widget/deliveryMethods.dart';
import 'package:flutter/material.dart';

class checkOut extends StatefulWidget {
  const checkOut({super.key});

  @override
  State<checkOut> createState() => _checkOutState();
}

class _checkOutState extends State<checkOut> {
  String cardNumber = '123456789012';

  ShippingModel? selectedShipping;

  @override
  Widget build(BuildContext context) {
    final submit = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "SUBMIT ORDER",
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

    String formattedCardNumber = maskCardNumber(cardNumber);

    selectedShipping = shipping.firstWhere(
      (address) => address.isSelected ?? false,
      orElse: () => ShippingModel(),
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
          "Checkout",
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 10, right: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Shipping address",
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 3,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 15, top: 10, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              selectedShipping?.name ?? "Add Name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: GestureDetector(
                                onTap: () async {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShippingAddress(),
                                    ),
                                  );

                                  if (result != null &&
                                      result is ShippingModel) {
                                    setState(() {
                                      selectedShipping = result;
                                    });
                                  }
                                },
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                      color: buttonColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          selectedShipping?.address ?? "Add Address",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                      Container(
                        child: Text(
                          selectedShipping != null
                              ? "${selectedShipping?.city ?? "Add State"} ${selectedShipping?.state ?? ""} ${selectedShipping?.zipCode ?? ""} ${selectedShipping?.country ?? ""}"
                              : "Add State",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Payment",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => paymentMethods()));
                          },
                          child: Text(
                            "Change",
                            style: TextStyle(
                                color: buttonColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Card(
                  surfaceTintColor: Colors.white,
                  shadowColor: Colors.grey,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Image.asset("assets/images/mastercard.png"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  formattedCardNumber,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Delivery method",
              style: TextStyle(
                  color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                DeliveryMethods(imageAssetPath: "assets/images/fedex.png"),
                SizedBox(
                  width: 10,
                ),
                DeliveryMethods(imageAssetPath: "assets/images/usps.png"),
                SizedBox(
                  width: 10,
                ),
                DeliveryMethods(imageAssetPath: "assets/images/dhl.png"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                orderSummary(
                  OrderDispatchSummarizer: "Order:",
                  price: "112\$",
                ),
                SizedBox(
                  height: 15,
                ),
                orderSummary(
                  OrderDispatchSummarizer: "Delivery:",
                  price: "15\$",
                ),
                SizedBox(
                  height: 15,
                ),
                orderSummary(
                  OrderDispatchSummarizer: "Summary:",
                  price: "117\$",
                )
              ],
            ),
            Spacer(),
            submit
          ],
        ),
      ),
    );
  }

  String maskCardNumber(String cardNumber) {
    if (cardNumber.length != 12) {
      return 'Invalid Card Number';
    }

    String masked = '**** ****';
    String remainingDigits = cardNumber.substring(8);

    return '$masked $remainingDigits';
  }
}
