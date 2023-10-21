import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/Screens/BagScreen/promocode.dart';
import 'package:ecommerceapp/Screens/HomeScreen/fashionsale.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final NewItemModel detail;
  const DetailScreen({super.key, required this.detail});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget snapshotWidget() {
    return SingleChildScrollView(child: fashionSale());
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

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final selectSizeController = TextEditingController();
    final addtoCart = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "ADD TO CART",
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
    final size = Container(
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
        controller: selectSizeController,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black.withOpacity(0.9)),
        textInputAction: TextInputAction.next,
        onTap: () {
          snapshotWidget();
        },
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white,
          hintText: "Size",
          suffixIcon: Icon(Icons.keyboard_arrow_down),
          hintStyle:
              TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
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
    final color = Container(
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
        controller: selectSizeController,
        cursorColor: Colors.black45,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black.withOpacity(0.9)),
        textInputAction: TextInputAction.next,
        onTap: () {
          snapshotWidget();
        },
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white,
          hintText: "Collor",
          suffixIcon: Icon(Icons.keyboard_arrow_down),
          hintStyle:
              TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
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
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.detail.name!,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 4.0,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
            child: addtoCart),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Image.asset(
                  widget.detail.image!,
                  fit: BoxFit.fill,
                ),
              ),
              /*   Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Expanded(child: size),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(child: color),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ], color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
             */
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "${widget.detail.name}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
