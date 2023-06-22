import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/top-view-dairy-products_23-2148610618.jpg?w=1800&t=st=1687473850~exp=1687474450~hmac=badf6eecd16c52ed0c03d8374bbfbe34bf7f1f802a2deef5d78e9925dfda2c04'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 11, 81, 138),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.cheese,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Dairy & Eggs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //Bakery
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/different-types-bread-made-from-wheat-flour_140725-5648.jpg?w=2000&t=st=1687474840~exp=1687475440~hmac=c0874dc010704f8f03dfdc37864bced1634ef3a655aea4ef735497c899aa1676'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.breadSlice,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Bakery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //Grains
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/different-type-raw-dry-legumes-composition-marble-table-surface_114579-73137.jpg?w=1800&t=st=1687476863~exp=1687477463~hmac=25bc7381d6abf16d5b0263518429d5feaf1fe46513ab665c4ad7daf9d01a25b6'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.wheatAwn,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Grains",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //Pasta
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/premium-photo/assortment-canned-food-cans-with-different-types-fish-salmon-tuna-mackerel-sprats-seafood-stone-background-with-copy-space-your-text_156140-6044.jpg?size=626&ext=jpg&ga=GA1.1.632749978.1685054520&semt=ais'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: Colors.yellow,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.fish,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Canned Foods",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //Snacks
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/close-up-chocolate-cookies-with-nuts_23-2148431157.jpg?w=826&t=st=1687477205~exp=1687477805~hmac=5b76309927f6ea661bcf4a72838e66364bb998fc67edf3ac6f808ee6bf33563a'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 179, 215, 244),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.cookieBite,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Snacks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //Beverages
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/front-view-wine-glasses-fresh-grapes-walnuts-yellow-cheese-wood-board-overturned-bottle-dark-background_140725-144998.jpg?w=1800&t=st=1687475185~exp=1687475785~hmac=765e0035e81bac0df75d4d0a171a84d69fefcbb4005c287e955d50ebaddc63c5'),
                    fit: BoxFit.cover,
                    opacity: 0.2),
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
            width: 150,
            height: 150,
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.wineBottle,
                  color: Colors.white,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Alcohol",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ],
    );
  }
}
