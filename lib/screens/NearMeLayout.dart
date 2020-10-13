import 'package:flutter/material.dart';
import 'package:swiggy_clone/widget/offersListItem.dart';

import 'package:swiggy_clone/widget/restaurantListItem.dart';

class NearMeLayout extends StatefulWidget {
  @override
  _NearMeLayoutState createState() => _NearMeLayoutState();
}

class _NearMeLayoutState extends State<NearMeLayout> {
  List offers = [
    'assets/images/offer_1.jpeg',
    'assets/images/offer_2.jpeg',
    'assets/images/offer_3.jpeg',
    'assets/images/offer_4.jpeg',
    'assets/images/offer_5.jpeg',
    'assets/images/offer_6.jpeg',
    'assets/images/offer_7.jpeg',
    'assets/images/offer_8.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            // app bar start
            Container(
              height: 52,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Other",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff535665),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Theme.of(context).accentColor,
                              )
                            ],
                          ),
                          Text(
                            "Ahmedabad, Gujarat",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.new_releases,
                            color: Color(0xff535665),
                          ),
                          Text(
                            "Offers",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff535665),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            // app bar start

            Divider(),

            Expanded(
              child: ListView(
                children: <Widget>[
                  // offers start
                  Container(
                    height: 192,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: offers.length,
                      itemBuilder: (_, index) =>
                          offersListItem(imageUrl: offers[index]),
                      separatorBuilder: (_, index) => Container(width: 5),
                    ),
                  ),
                  // offers start

                  // swiggy pop start
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: ListTile(
                            leading: Image(
                              height: 52,
                              width: 52,
                              image: AssetImage('assets/images/swiggy_pop.png'),
                              fit: BoxFit.contain,
                            ),
                            title: Text(
                              "Swiggy POP",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF3d4152),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text(
                              "Free delivery, All Inclusive Prices",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF282c3f),
                              ),
                            ),
                          )),
                    ),
                  ),
                  // swiggy pop end

                  // All Restaurants start
                  Container(
                    child: Column(
                      children: <Widget>[
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT6SoOY7oduZB1f8KjwVfrJrovnZYv0NQ1hPw&usqp=CAU',
                          name: "SubWay",
                          description: "Fast Food",
                          ratting: 4.0,
                          mins: 28,
                          price: 400,
                        ),
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCq12tQHDsMGCFM_fNBQ_Vqt4ZUQiSLO2Wxw&usqp=CAU',
                          name: "jassi de parathe",
                          description:
                              "North Indian, Paratha, Snacks, Street Food, Indian, Thai",
                          ratting: 3.5,
                          mins: 30,
                          price: 200,
                        ),
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCA4bn8JwIvaX9IV640pMvtTUJfnh-HdtVvw&usqp=CAU',
                          name: "The Mondo Kitchen",
                          description: "Desserts, Fast Food, Punjabi",
                          ratting: 4.2,
                          mins: 30,
                          price: 400,
                        ),
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQlMjEvyWmeyYDbKRReFeuHUhsLfirI_IzyCA&usqp=CAU',
                          name: "La Pinoz",
                          description: "Pizzas, Chinese",
                          ratting: 4.0,
                          mins: 31,
                          price: 250,
                        ),
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcpbBnM99_zCovavUEQLhozRncVp1B4RngDQ&usqp=CAU',
                          name: "happinezz",
                          description: "Deserts",
                          ratting: 4.0,
                          mins: 31,
                          price: 250,
                        ),
                        restaurantListItem(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSbLZCKNuii3JKq0ljuWhXgbb21a9gawGRx2w&usqp=CAU',
                          name: "Keventers",
                          description: "Milk Shake",
                          ratting: 4.0,
                          mins: 31,
                          price: 250,
                        ),
                      ],
                    ),
                  ),
                  // All Restaurants end
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
