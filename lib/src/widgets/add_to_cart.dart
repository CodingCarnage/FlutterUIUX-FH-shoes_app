import 'package:flutter/material.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({Key key, this.amount}) : super(key: key);

  final double amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.125),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 20.0),
            Text(
              '\$$amount',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Add to cart',
            ),
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
