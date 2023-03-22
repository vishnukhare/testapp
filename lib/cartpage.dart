import 'package:flutter/material.dart';
import 'package:testapp/bottomcart.dart';
import 'cartiteamsamp.dart';
import 'home_screen.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:  const BackButton(color: Colors.black),
        elevation: 0,
        title: Text("Cart",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft: Radius.circular(35)
            )
          ),
          child: Column(
            children: [
              CartIteamSample(),
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Add a voucher",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: outlineInputBorder,
                      enabledBorder: outlineInputBorder,
                      focusedBorder: outlineInputBorder,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}