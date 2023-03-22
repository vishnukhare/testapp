import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/detailscreen.dart';


class IteamWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=0;i<10;i++)

          Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20)
                    ),

                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    "assets/images/product_$i.svg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'NAME OF Products',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "           \$55",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
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