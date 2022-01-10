import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../app/routes/index.dart';
import '../../../../features/products/item/index.dart';
import 'index.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ProductItem item;

  @override
  Widget build(BuildContext context) {
    final h = Get.height / 100;
    final w = Get.width / 100;

    return Container(
      width: double.infinity,
      height: h * 23,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xFFC3CFD9),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageContainer(
              url: item.urlImage,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: w * 50,
                  child: Row(
                    children: [
                      SizedBox(
                        width: w * 40,
                        child: Text(
                          item.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.edit, arguments: item);
                        },
                        child: Icon(
                          Icons.pending,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "${item.type}",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontSize: 15),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: h * 5.5,
                  width: w * 45,
                  child: Text(
                    item.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: item.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: h * 2,
                      itemCount: 5,
                      ignoreGestures: true,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color(0xFF6558F5),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      "R\$ ${item.price.toString()}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
