import 'package:ecommerceapp/Screens/SignInSignUp/SignInScreen.dart';
import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signup = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "SIGN UP",
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
    final google = Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: 60,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Image.network(
          "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
          width: 30,
          height: 30,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
    final facebook = Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: 60,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/2048px-Facebook_icon_2013.svg.png",
          width: 30,
          height: 30,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  buildTextField("Name", nameController, nameFocusNode),
                  SizedBox(height: 10),
                  buildTextField("Email", emailController, emailFocusNode),
                  SizedBox(height: 10),
                  buildTextField(
                      "Password", passwordController, passwordFocusNode),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInSCreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Already have an account? "),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: buttonColor,
                        )
                      ],
                    ),
                  ),
                  signup,
                  Spacer(),
                  Center(
                    child: Container(
                      child: Text(
                        "Or sign up with social account",
                        style: TextStyle(color: textColor, fontSize: 15),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      google,
                      SizedBox(
                        width: 20,
                      ),
                      facebook
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String label, TextEditingController controller, FocusNode focusNode) {
    String? emailValidator(String? value) {
      if (value == null || value.isEmpty) {
        return "$label can't be empty";
      } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
          .hasMatch(value)) {
        return 'Enter a valid email address';
      }
      return null;
    }

    String? passwordValidator(String? value) {
      if (value == null || value.isEmpty) {
        return "$label can't be empty";
      } else if (value.length < 6) {
        return 'Password must be at least 6 characters long';
      }
      return null;
    }

    bool isFieldValid(String? value, String label) {
      if (label == "Email") {
        return emailValidator(value) == null;
      } else if (label == "Password") {
        return passwordValidator(value) == null;
      }
      return value != null && value.isNotEmpty;
    }

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(10),
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            cursorColor: Colors.black45,
            keyboardType: label == "Email"
                ? TextInputType.emailAddress
                : TextInputType.text,
            style: TextStyle(color: Colors.black.withOpacity(0.9)),
            validator: label == "Email" ? emailValidator : passwordValidator,
            textInputAction: label == "Password"
                ? TextInputAction.done
                : TextInputAction.next,
            obscureText: label == "Password",
            onEditingComplete: () {
              if (label == "Name") {
                FocusScope.of(context).requestFocus(emailFocusNode);
              } else if (label == "Email") {
                FocusScope.of(context).requestFocus(passwordFocusNode);
              }
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(15, 15, 0, 10),
              labelText: "$label",
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Colors.white.withOpacity(0.3),
              hintText: "Enter $label",
              hintStyle:
                  TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 12),
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
        ),
        if (isFieldValid(controller.text, label))
          Icon(
            Icons.check,
            color: Colors.green,
          ),
      ],
    );
  }
}
