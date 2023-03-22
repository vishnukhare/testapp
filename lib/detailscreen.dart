import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/cartpage.dart';
import 'package:testapp/constants.dart';
import 'category.dart';





class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  const BackButton(color: Colors.black),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
          }, icon: CircleAvatar(child: Icon(Icons.shopping_bag_outlined ,color: Colors.black,),backgroundColor: Colors.transparent,))
        ],
      ),
      body:
      Container(

        child: ListView(
          children: [

            Padding(padding: EdgeInsets.all(16),
                child: SvgPicture.asset('assets/images/product_0.svg',height: 300,)),
            Expanded(
                child: Container(
                  padding: const  EdgeInsets.fromLTRB(defaultPadding, defaultPadding*2, defaultPadding, defaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultBorderRadius*3),
                      topRight: Radius.circular(defaultBorderRadius*3)
                    ),
                  ),
                  child: SingleChildScrollView(

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Produt Title\n\$55",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.star_border),),
                            const SizedBox(width: defaultPadding),
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove),),
                            Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          ],
                        ),
                        const SizedBox(height: defaultPadding/2,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Size",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),

                        Size(),
                        const SizedBox(height: defaultPadding/2,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Color",
                                style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ColorDot(color: Color(0xFFBEE8EA), press: (){}),
                            ColorDot(color: Color(0xFFAE56EA), press: (){}),
                            ColorDot(color: Color(0xFFEAA70F), press: (){}),
                          ],
                        ),
                        const SizedBox(height: defaultPadding/2,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Discription",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        const SizedBox(height: defaultPadding/2,),
                        Align (
                          alignment: Alignment.center,
                          child: Text(
                            "Detail of the product or discription of the product"
                                "That’s a yeah, yeah phrase. As soon as a potential buyer reads excellent product quality he thinks, yeah, yeah, of course; that’s what everyone says. Ever heard someone describe their product quality as average, not-so-good, or even bad? The word patented gives the reader the impression that this is something special.",
                          ),
                        ),
                        const SizedBox(height: defaultPadding,),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10,)
                          ),
                          child: TextButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));}, icon: Icon(Icons.shopping_bag_outlined,color: Colors.white), label: Text("Add to Cart",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ],

        ),
      ),

    );
  }
}

class ColorDot extends StatelessWidget{
  const ColorDot({Key? key, required this.color, required this.press}) : super(key: key);

  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding/4),
        decoration: BoxDecoration(
            border: Border.all(color : Colors.transparent),
            shape: BoxShape.circle
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}



class Size extends StatelessWidget {
  const Size({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo_size.length,
        itemBuilder: (context, index) => SizeCard(
          titl: demo_size[index].titl,
          press: () {},
        ),
        separatorBuilder: (context, index) =>
        const SizedBox(width: defaultPadding),
      ),
    );
  }
}

class SizeCard extends StatelessWidget {
  const SizeCard({
    Key? key,
    required this.titl,
    required this.press,
  }) : super(key: key);

  final String titl;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(1000)),),),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
          children: [

            Text(
              titl,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}