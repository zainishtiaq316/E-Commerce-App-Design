import 'package:ecommerceapp/Constant/colors.dart';
import 'package:flutter/material.dart';

class forgotPasswordScreen extends StatefulWidget {
  const forgotPasswordScreen({super.key});

  @override
  State<forgotPasswordScreen> createState() => _forgotPasswordScreenState();
}

class _forgotPasswordScreenState extends State<forgotPasswordScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signIn = Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Send",
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
                      "Forgot password",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  buildTextField("Email", emailController, emailFocusNode),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Forgot your password? "),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: buttonColor,
                        )
                      ],
                    ),
                  ),
                  signIn,
                  Spacer(),
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
