import 'package:ecommerceapp/Constant/colors.dart';
import 'package:ecommerceapp/Model/bagModel.dart';
import 'package:flutter/material.dart';

class bagCard extends StatelessWidget {
  final bagModel bag;
  const bagCard({super.key, required this.bag});

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    void incrementQuantity() {
      quantity++;
    }

    void decrementQuantity() {
      if (quantity > 0) {
        quantity--;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 1,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Image.asset(
                    bag.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "${bag.title}",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Color: ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              TextSpan(text: '${bag.color}'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Size: ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              TextSpan(text: '${bag.size}'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: decrementQuantity,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("$quantity"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: incrementQuantity,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Text(
                            "\$${bag.price}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
