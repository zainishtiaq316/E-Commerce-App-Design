import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/profileModel.dart';
import 'package:ecommerceapp/Screens/ProfileScreen/MyOrdered.dart';
import 'package:ecommerceapp/Screens/ProfileScreen/settingScreen.dart';
import 'package:flutter/material.dart';

class profileCard extends StatelessWidget {
  final profileModel profile;
  const profileCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      surfaceTintColor: Colors.white,
      child: GestureDetector(
        onTap: () {
          if (profile.title == 'Settings')
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingScreen()));

          if (profile.title == 'My Orders')
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyOrderedScreen()));
        },
        child: ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "${profile.title}",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "${profile.subtitle}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
        ),
      ),
    );
  }
}
