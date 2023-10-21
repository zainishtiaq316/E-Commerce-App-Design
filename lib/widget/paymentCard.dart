import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/paymentModel.dart';
import 'package:ecommerceapp/widget/maskCardNumber.dart';
import 'package:flutter/material.dart';

class paymentCard extends StatelessWidget {
  final PaymentModel payment;
  final Function(bool) onSelectionChanged;
  const paymentCard({
    super.key,
    required this.payment,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    String formattedCardNumber = maskCardNumber(payment.cardCode!);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: payment.selectMasterCard == true
                        ? textColor
                        : visaColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x14000000),
                        offset: Offset(0, 1),
                        blurRadius: 25,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 25, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (payment.selectVisaCard == true)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              "${payment.cardtypeImage}",
                              color: Colors.white,
                            )
                          ],
                        ),
                      if (payment.selectMasterCard == true)
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset(payment.chip!),
                        ),
                      if (payment.selectMasterCard == true)
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            formattedCardNumber,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      if (payment.selectVisaCard == true)
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Text(
                            formattedCardNumber,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      if (payment.selectVisaCard == true)
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Image.asset(payment.chip!),
                        ),
                      Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Card Holder Name",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                Text(
                                  "${payment.cardHolderName}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          if (payment.selectMasterCard == true)
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expiry Date",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                  Text(
                                    "${payment.expiryDate}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          if (payment.selectVisaCard == true)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                Text(
                                  "${payment.expiryDate}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          if (payment.selectMasterCard == true)
                            Column(
                              children: [
                                Image.asset("${payment.cardtypeImage}"),
                                Image.asset(
                                  "${payment.cardtypeName}",
                                )
                              ],
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: -10,
                  child: Image.asset("assets/images/v1.png")),
              Positioned(
                  top: -10,
                  right: 0,
                  child: Container(
                    child: Image.asset(
                      "assets/images/v2.png",
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: payment.isSelected,
                checkColor: Colors.white,
                activeColor: Colors.black,
                onChanged: (value) {
                  onSelectionChanged(value ?? false);
                },
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  "Use as default payment method",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
