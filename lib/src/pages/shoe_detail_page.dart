import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

import 'package:shoes_app/src/helpers/helpers.dart';

import 'package:shoes_app/src/models/shoe_model.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoeDetailPage extends StatelessWidget {
  const ShoeDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusBarLight();
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: 'ShoeSizePreviewHero',
                child: ShoeSizePreview(
                  fullScreen: true,
                ),
              ),
              Positioned(
                top: 40,
                left: 15,
                child: FloatingActionButton(
                  onPressed: () {
                    changeStatusBarDark();
                    Navigator.pop(context);
                  },  
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
                        'The Nike Air Max 720 goes bigger than ever before with Nike\'s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
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
                  Positioned(
                    left: 90,
                    child: _ShoeColor(
                      4,
                      color: Color(0xffC6D642),
                      assetImage: 'assets/images/verde.png',
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: _ShoeColor(
                      3,
                      color: Color(0xffFFAD29),
                      assetImage: 'assets/images/amarillo.png',
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: _ShoeColor(
                      2,
                      color: Color(0xff2099F1),
                      assetImage: 'assets/images/azul.png',
                    ),
                  ),
                  _ShoeColor(
                    1,
                    color: Color(0xff364D56),
                    assetImage: 'assets/images/negro.png',
                  ),
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
  const _ShoeColor(
    this.index, {
    Key key,
    @required this.color,
    @required this.assetImage,
  }) : super(key: key);

  final Color color;
  final int index;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final ShoeModel shoeModel = Provider.of<ShoeModel>(context, listen: false);
          shoeModel.assetImage = this.assetImage;
        },
        child: Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
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
            Bounce(
              delay: Duration(milliseconds: 500),
              from: 8,
              child: CustomButton(
                text: 'Buy Now',
                width: 120.0,
                height: 40.0,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
