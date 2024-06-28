import 'package:ecommerce_demo/Models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale, -List
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan red",
        price: "250",
        imagePath: "lib/images/air jordan.webp",
        description: "These shoes are perfect for a casual or sporty look."),
    Shoe(
        name: "Air Jordan black ",
        price: "236",
        imagePath: "lib/images/black&orange jordan.webp",
        description: "Stylish and comfortable, ideal for everyday wear."),
    Shoe(
        name: "Air Jordan grey",
        price: "250",
        imagePath: "lib/images/grey&black jordan.jpg",
        description: "Versatile and durable, suitable for various occasions."),
    Shoe(
        name: "Air Jordan red",
        price: "200",
        imagePath: "lib/images/red shoes.webp",
        description: "Bold and vibrant, these shoes stand out in any crowd."),
    Shoe(
        name: "Air Jordan grey",
        price: "250",
        imagePath: "lib/images/red&white jordan.jpg",
        description: "Elegant and sleek, perfect for formal events."),
    Shoe(
        name: "Air Jordan grey",
        price: "290",
        imagePath: "lib/images/whiteGrey jordan.jpg",
        description:
            "Classic and timeless, these shoes never go out of style."),
  ];

  //list of items in user Cart, -List
  List<Shoe> userCart = [];

  // get list of shoes for sale, -method
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart. -method
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart. -method
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart. -method
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
