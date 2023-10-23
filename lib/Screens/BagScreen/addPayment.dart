import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class AddPayment extends StatelessWidget {
  AddPayment({super.key});

  final TextEditingController _expiryDateController = TextEditingController();

  // Function to open a date picker dialog
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now())
      _expiryDateController.text = picked.toLocal().toString();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _expiryDateController = TextEditingController();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _cardNumberController = TextEditingController();
    final TextEditingController _CVV = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    bool isDefaultPayment = false;

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
        controller: _nameController,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Name on Card',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final cardNumber = Container(
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
        controller: _cardNumberController,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Card number',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final expiryDate = Container(
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
        onTap: () {
          _selectDate(context);
        },
        controller: _expiryDateController,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Expiry Date',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final CVC = Container(
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
        controller: _CVV,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'CVV',
            suffixIcon: Icon(Icons.help_outline),
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final checkBox = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isDefaultPayment,
          checkColor: Colors.white,
          activeColor: Colors.black,
          onChanged: (value) {
            isDefaultPayment = true;
          },
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Text(
            "Set as default payment method",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ],
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
        height: MediaQuery.of(context).size.width * 1.5,
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
                  "Add new card",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                name,
                SizedBox(
                  height: 15,
                ),
                cardNumber,
                SizedBox(
                  height: 15,
                ),
                expiryDate,
                SizedBox(
                  height: 15,
                ),
                CVC,
                SizedBox(
                  height: 15,
                ),
                checkBox,
                SizedBox(
                  height: 15,
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
