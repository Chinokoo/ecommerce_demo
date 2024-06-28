import 'package:ecommerce_demo/Models/cart.dart';
import 'package:ecommerce_demo/Models/shoe.dart';
import 'package:ecommerce_demo/components/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual shoe.
                      Shoe individualShoe = value.getUserCart()[index];

                      //return the cart item.
                      return CartItem(shoe: individualShoe);
                    })),
          ],
        ),
      ),
    );
  }
}
