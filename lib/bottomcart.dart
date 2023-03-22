import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10,)
              ),
              child: TextButton.icon(onPressed: (){},label: Text("Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), icon: Icon(Icons.arrow_forward,color: Colors.white),style: TextButton.styleFrom(backgroundColor: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }

}