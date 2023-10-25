import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Screens/ProfileScreen/changePassword.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Widget snapshotWidget() {
      return SingleChildScrollView(child: ChangePassword());
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

    bool isSwitched = true;

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
    final dateOfBirth = Container(
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
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
            labelText: 'Date of Birth',
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none),
      ),
    );
    final password = Container(
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 10),
              child: Container(
                child: Text(
                  "Settings",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                name,
                SizedBox(
                  height: 20,
                ),
                dateOfBirth,
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        _showSnapshot();
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                password,
                SizedBox(
                  height: 40,
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "Sales ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Switch(
                          activeColor: Colors.green,
                          activeTrackColor: Colors.grey.shade300,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.transparent,
                          value: isSwitched,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "New arrivals",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Switch(
                          activeColor: Colors.green,
                          activeTrackColor: Colors.grey.shade300,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.transparent,
                          value: isSwitched,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "Delivery status changes",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Switch(
                          activeColor: Colors.green,
                          activeTrackColor: Colors.grey.shade300,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.transparent,
                          value: isSwitched,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
