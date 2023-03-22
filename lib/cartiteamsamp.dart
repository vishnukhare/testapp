import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartIteamSample extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=0;i<3;i++)

          Container(
            height: 110,

            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  child: SvgPicture.asset("assets/images/product_$i.svg"),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Title                ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                      Text("SIZE:L",style: TextStyle(fontSize: 10),),
                      Text("\$55",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.delete,color: Colors.red,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 8,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}