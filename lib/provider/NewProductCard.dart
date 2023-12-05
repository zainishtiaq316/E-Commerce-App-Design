import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/Model/CategoryModel.dart';
import 'package:ecommerceapp/Model/categoryModels.dart';
import 'package:ecommerceapp/Screens/detailScreen/detailScreen.dart';
import 'package:ecommerceapp/provider/productConsumer.dart';
import 'package:flutter/material.dart';

class NewProductCard extends StatelessWidget {
  NewProductCard({super.key, required this.data});
  CategoryModel data;
  @override
  Widget build(BuildContext context) {
    int totalStars = 5;
    int count = 5;

    return Card(
      surfaceTintColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: data.image != null
                    ? CachedNetworkImage(
                        imageUrl: '${data.image!.src}',
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: MediaQuery.of(context).size.height * 0.1,
                      )
                    : CachedNetworkImage(
                        imageUrl:
                            'https://media.istockphoto.com/id/140457982/photo/old-fashioned-wheel.jpg?s=612x612&w=0&k=20&c=ZSOXpc0Zqm8SV8h6gO_qAOWqX5KqJ8XlggHYSvg7N5c=',
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),

                //fit: BoxFit.cover,
              ),
              /*Positioned(
                  top: 10,
                  left: 5,
                  child: Container(
                    width: 40,
                    height: 22,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "${data.display}",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  )),
           */
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                for (int i = 1; i <= totalStars; i++)
                  Icon(
                    i <= data.count!
                        ? Icons.star
                        : Icons.star_border, // Filled or empty star
                    color: i <= data.count!
                        ? Colors.yellow
                        : Colors.grey, // Star color
                    size: 12,
                  ),
                Container(
                  child: Text(
                    " (${data.count})",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Text(
                    "${data.name}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
