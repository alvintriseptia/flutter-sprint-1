import 'package:flutter/material.dart';
import 'package:sprint1/chapter48/custom_progress_bar.dart';

const Color firstColor = Color(0xFFF44336);
const Color secondColor = Color(0xFF4caf50);

class ProductCard extends StatelessWidget {
  String imageURL;
  String name;
  String price;
  int quantity;
  int time;
  String notification;
  TextStyle textStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);
  Function onAddCartTap;
  Function onIncTap;
  Function onDecTap;

  ProductCard({
    this.imageURL = "",
    this.name = "",
    this.price = "",
    this.quantity = 0,
    this.time = 0,
    this.notification,
    this.onIncTap,
    this.onDecTap,
    this.onAddCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedContainer(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(left: 10, right: 10),
        duration: Duration(milliseconds: 300),
        width: 180,
        height: (notification != null) ? 290 : 250,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 3,
                  offset: Offset(1, 1))
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: secondColor),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            (notification != null) ? notification : "",
            style: textStyle.copyWith(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
      Container(
        width: 200,
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(1, 1),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imageURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    name,
                    style: textStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  child: Text(price,
                      style:
                          textStyle.copyWith(fontSize: 12, color: firstColor)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: CustomProgressBar(
                    width: 150,
                    value: time ?? 0,
                    totalValue: 15,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Column(
                children: [
                  Container(
                    width: 190,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: firstColor)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: onIncTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              color: firstColor,
                              child: Icon(Icons.add,
                                  size: 18, color: Colors.white),
                            ),
                          ),
                          Text(quantity.toString(), style: textStyle),
                          GestureDetector(
                            onTap: onDecTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              color: firstColor,
                              child: Icon(Icons.remove,
                                  size: 18, color: Colors.white),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                      width: 190,
                      height: 40,
                      child: RaisedButton(
                        onPressed: onAddCartTap,
                        color: firstColor,
                        child: Icon(
                          Icons.add_shopping_cart,
                          size: 18,
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16))),
                      ))
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
