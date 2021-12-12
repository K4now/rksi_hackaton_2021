import 'dart:js';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rksi_hackaton_2021/model/basket_item.dart';
import 'package:rksi_hackaton_2021/provider/basket.dart';
import 'package:rksi_hackaton_2021/provider/provider.dart';
import 'package:rksi_hackaton_2021/pages/home/basket_page.dart';

class BasketHome extends StatelessWidget {
  late Basket provBasket;
  @override
  Widget build(BuildContext context) {
    provBasket = Provider.of<Basket>(context);
    return ChangeNotifierProvider<Basket>(
        create: (_) => Basket(),
        builder: (context, snapshot) {
          return Container(
            child: ListView.builder(
                itemCount: provBasket.itemsBasket.length,
                itemBuilder: (context, index) {
                  return _widgetItem(provBasket.itemsBasket[index]);
                }),
          );
        });
  }

  _widgetItem(BasketItem basketItem) {
    return Container(
      child: Text(basketItem.name.toString()),
    );
  }
}
