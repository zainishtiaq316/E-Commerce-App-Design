import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/provider/getSingleProductProvider.dart';
import 'package:ecommerceapp/provider/singleProductVariationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class singleProductVariationConsumer extends StatefulWidget {
  final String spvariation;
  const singleProductVariationConsumer({super.key, required this.spvariation});

  @override
  State<singleProductVariationConsumer> createState() =>
      _singleProductVariationConsumerState();
}

class _singleProductVariationConsumerState
    extends State<singleProductVariationConsumer> {
  void initState() {
    super.initState();
    Provider.of<singleProductVariationProvider>(context, listen: false)
        .getSingleProductVariation(widget.spvariation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: Consumer<singleProductVariationProvider>(
          builder: (context, productProvider, child) {
            if (!productProvider.isloading) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: 5,
                  right: 5,
                ),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          "${productProvider.productVariation?.image?.src}",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Loading..."),
              );
            }
          },
        ),
      ),
    );
  }
}
