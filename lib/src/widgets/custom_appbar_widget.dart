import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key, @required this.text}) : super(key: key);
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        margin: const EdgeInsets.only(top: 27.5),
        child: Row(
          children: <Widget>[
            Text(
              this.text,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.search,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
