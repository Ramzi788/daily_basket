import 'package:daily_basket/Constants/themes.dart';
import 'package:daily_basket/components/LargeCards.dart';
import 'package:daily_basket/components/Products.dart';
import 'package:daily_basket/components/Categories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../components/SearchField.dart';
import '../components/BottomNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: theme().primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: Colors.black,
          backgroundColor: theme().primaryColor,
          elevation: 0,
          centerTitle: false,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Daily Basket",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: Icon(
                    MdiIcons.cartOutline,
                    color: Colors.white,
                  )),
            ),
          ],
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SearchField(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Top Catgories",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              const Text(
                                "See all",
                                style: TextStyle(fontSize: 15),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/category');
                                },
                                icon: const Icon(FontAwesomeIcons.arrowRight),
                                iconSize: 25,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //Categories
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 5),
                          child: Categories(
                            catName: 'Dairy and Eggs',
                            catIcon: FontAwesomeIcons.cheese,
                            backColor: Color.fromARGB(255, 80, 207, 97),
                            imagePath:
                                'https://img.freepik.com/free-photo/top-view-dairy-products_23-2148610618.jpg?w=1800&t=st=1687473850~exp=1687474450~hmac=badf6eecd16c52ed0c03d8374bbfbe34bf7f1f802a2deef5d78e9925dfda2c04',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5, left: 5),
                          child: Categories(
                            backColor: Color.fromARGB(255, 255, 198, 112),
                            catName: 'Bakery',
                            catIcon: FontAwesomeIcons.breadSlice,
                            imagePath:
                                'https://img.freepik.com/free-photo/different-types-bread-made-from-wheat-flour_140725-5648.jpg?w=2000&t=st=1687474840~exp=1687475440~hmac=c0874dc010704f8f03dfdc37864bced1634ef3a655aea4ef735497c899aa1676',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Categories(
                            catName: 'Grains',
                            catIcon: FontAwesomeIcons.wheatAwn,
                            backColor: Color.fromARGB(255, 193, 63, 186),
                            imagePath:
                                'https://img.freepik.com/free-photo/different-type-raw-dry-legumes-composition-marble-table-surface_114579-73137.jpg?w=1800&t=st=1687476863~exp=1687477463~hmac=25bc7381d6abf16d5b0263518429d5feaf1fe46513ab665c4ad7daf9d01a25b6',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Categories(
                            catName: 'Canned Food',
                            catIcon: FontAwesomeIcons.fish,
                            backColor: Colors.blue,
                            imagePath:
                                'https://img.freepik.com/premium-photo/assortment-canned-food-cans-with-different-types-fish-salmon-tuna-mackerel-sprats-seafood-stone-background-with-copy-space-your-text_156140-6044.jpg?size=626&ext=jpg&ga=GA1.1.632749978.1685054520&semt=ais',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Categories(
                            catName: 'Snacks',
                            catIcon: FontAwesomeIcons.cookieBite,
                            backColor: Colors.red,
                            imagePath:
                                'https://img.freepik.com/free-photo/close-up-chocolate-cookies-with-nuts_23-2148431157.jpg?w=826&t=st=1687477205~exp=1687477805~hmac=5b76309927f6ea661bcf4a72838e66364bb998fc67edf3ac6f808ee6bf33563a',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Categories(
                            catName: 'Alcohol',
                            catIcon: FontAwesomeIcons.wineBottle,
                            backColor: Colors.blue,
                            imagePath:
                                'https://img.freepik.com/free-photo/front-view-wine-glasses-fresh-grapes-walnuts-yellow-cheese-wood-board-overturned-bottle-dark-background_140725-144998.jpg?w=1800&t=st=1687475185~exp=1687475785~hmac=765e0035e81bac0df75d4d0a171a84d69fefcbb4005c287e955d50ebaddc63c5',
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Fresh Products",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: LargeCards(
                                title: "Fruits",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2018/05/08/20/19/pomegranate-3383814_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Vegetables",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2019/03/10/11/23/vegetables-4045971_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Dairy",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2016/12/06/18/27/milk-1887234_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Grains",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2016/08/30/20/20/noodles-1631935_1280.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //----------------------------Best Sellers-----------------------------------
                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Our Best Sellers",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: BestSellers(
                              imagePath:
                                  'assets/images/marlboro-removebg-preview.png',
                              itemName: 'Marlboro Cigarette',
                              itemPrice: 'LBP 100,000',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: BestSellers(
                              imagePath:
                                  'assets/images/marlboro-removebg-preview.png',
                              itemName: 'Marlboro Cigarette',
                              itemPrice: 'LBP 100,000',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: BestSellers(
                              imagePath:
                                  'assets/images/marlboro-removebg-preview.png',
                              itemName: 'Marlboro Cigarette',
                              itemPrice: 'LBP 100,000',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: BestSellers(
                              imagePath:
                                  'assets/images/marlboro-removebg-preview.png',
                              itemName: 'Marlboro Cigarette',
                              itemPrice: 'LBP 100,000',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: BestSellers(
                              imagePath:
                                  'assets/images/marlboro-removebg-preview.png',
                              itemName: 'Marlboro Cigarette',
                              itemPrice: 'LBP 100,000',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //----------------------------Home Products-----------------------------------
                  const Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Snacks",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 100),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: LargeCards(
                                title: "Ice Cream",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2017/04/18/15/10/strawberry-ice-cream-2239377_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Candy",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2012/06/27/15/02/candy-50838_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Chips",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2014/09/16/20/59/potato-chips-448737_1280.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: LargeCards(
                                title: "Chocolate",
                                imagePath:
                                    "https://cdn.pixabay.com/photo/2020/12/13/13/30/cinnamon-sticks-5828241_1280.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
