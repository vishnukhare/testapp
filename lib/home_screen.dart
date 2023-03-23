import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/banner.dart';
import 'package:testapp/category.dart';
import 'package:testapp/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:testapp/recommended_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                  "assets/icons/undraw_profile_pic_re_iwgo.svg"))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: Colors.white,
                    border: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/Search.svg'),
                    )),
              ),
            ),
            BannerScreen(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demo_categories.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: CategoryCard(
                      icon: demo_categories[index].icon,
                      title: demo_categories[index].title,
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
            IteamWidget(),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (index) {},
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(""),
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            title: Text(""),
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
            selectedColor: Colors.black,
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo_categories.length,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) =>
            const SizedBox(width: defaultPadding),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
          children: [
            Image.asset(icon, height: 40, width: 40),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
