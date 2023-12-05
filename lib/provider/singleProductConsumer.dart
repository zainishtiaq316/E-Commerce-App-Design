import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/provider/getSingleProductProvider.dart';
import 'package:ecommerceapp/provider/singleProductVariationConsumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

class singleProductConsumer extends StatefulWidget {
  final String spid;
  const singleProductConsumer({Key? key, required this.spid}) : super(key: key);

  @override
  State<singleProductConsumer> createState() => _singleProductConsumerState();
}

class _singleProductConsumerState extends State<singleProductConsumer> {
  @override
  void initState() {
    super.initState();
    Provider.of<getSingleProductProvider>(context, listen: false)
        .fetchsingleProductswithId(widget.spid);
  }

  @override
  Widget build(BuildContext context) {
    int totalStars = 5;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Buy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: Consumer<getSingleProductProvider>(
                builder: (context, productProvider, child) {
                  if (!productProvider.isloading) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        left: 5,
                        right: 5,
                      ),
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverAppBar(
                              automaticallyImplyLeading: false,
                              expandedHeight: size.height * 0.35,
                              floating: false,
                              pinned: true,
                              flexibleSpace: Stack(
                                fit: StackFit.loose,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  singleProductVariationConsumer(
                                                      spvariation:
                                                          productProvider
                                                              .product!.id
                                                              .toString())));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                bottom: Radius.circular(20)),
                                        image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            "${productProvider.product?.images?[0].src}",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            spreadRadius: 0,
                                            blurRadius: 20,
                                            offset: const Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    left: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                                right: Radius.circular(15)),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              iconSize: 20,
                                              icon: Icon(Icons.arrow_back_ios)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30,
                                    right: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            const BorderRadius.horizontal(
                                                left: Radius.circular(15)),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              iconSize: 20,
                                              icon: Icon(Icons.shopping_cart)),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          SliverList(
                              delegate: SliverChildListDelegate([
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      "${productProvider.product?.name}",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$${productProvider.product?.price}",
                                    style: TextStyle(
                                        color: Colors.red.shade600,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: [
                                  for (int i = 1; i <= totalStars; i++)
                                    Icon(
                                      i <= totalStars
                                          ? Icons.star
                                          : Icons
                                              .star_border, // Filled or empty star
                                      color: i <= totalStars
                                          ? Colors.yellow
                                          : Colors.grey, // Star color
                                      size: 15,
                                    ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "(${productProvider.product?.averageRating})",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Html(
                                data: "${productProvider.product?.description}",
                              ),
                            ),
                          ]))
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
          ],
        ),
      ),
    );
  }
}
