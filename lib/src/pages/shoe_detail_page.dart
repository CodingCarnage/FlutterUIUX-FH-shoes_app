import 'package:flutter/material.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoeDetailPage extends StatelessWidget {
  const ShoeDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ShoeSizePreview(
                fullScreen: true,
              ),
              Positioned(
                top: 40,
                left: 15,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60,
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so. The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so. The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so. The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                  ),
                  _AmountBuyNow(),
                  _ColorSelectionAndMore(),
                  _ButtonsLikeCartSettings(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonsLikeCartSettings extends StatelessWidget {
  const _ButtonsLikeCartSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0, top: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _ShadedButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 25,
            ),
          ),
          _ShadedButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _ShadedButton(
            icon: Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _ShadedButton extends StatelessWidget {
  const _ShadedButton({
    Key key,
    this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: this.icon,
    );
  }
}

class _ColorSelectionAndMore extends StatelessWidget {
  const _ColorSelectionAndMore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(left: 90, child: _ShoeColor(color: Color(0xffC6D642))),
                  Positioned(left: 60, child: _ShoeColor(color: Color(0xffFFAD29))),
                  Positioned(left: 30, child: _ShoeColor(color: Color(0xff2099F1))),
                  _ShoeColor(color: Color(0xff364D56)),
                ],
              ),
            ),
            CustomButton(
              text: 'More related items',
              height: 32.5,
              width: 170.0,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class _ShoeColor extends StatelessWidget {
  const _ShoeColor({
    Key key,
    @required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _AmountBuyNow extends StatelessWidget {
  const _AmountBuyNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: <Widget>[
            Text(
              '\$180.0',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Buy Now',
              width: 120.0,
              height: 40.0,
              color: Colors.deepOrangeAccent,
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
