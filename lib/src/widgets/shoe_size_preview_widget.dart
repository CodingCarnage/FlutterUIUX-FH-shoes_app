import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_app/src/models/shoe_model.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ShoeSizePreviewBackground();
  }
}

class _ShoeSizePreviewBackground extends StatelessWidget {
  const _ShoeSizePreviewBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 425.0,
        decoration: BoxDecoration(
          //* Change to main color.
          color: Color(0xffFFD54F),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: _ShoeSizePreviewForeground(),
      ),
    );
  }
}

class _ShoeSizePreviewForeground extends StatelessWidget {
  const _ShoeSizePreviewForeground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _Shoe(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: _ShoeSizeSelection(),
        ),
      ],
    );
  }
}

class _Shoe extends StatelessWidget {
  const _Shoe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 5.0,
            right: 0.0,
            child: _ShoeShadow(),
          ),
          Image(
            image: AssetImage('assets/images/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230.0,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffF79E38), //* Change to main color.
              blurRadius: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _ShoeSizeSelection extends StatelessWidget {
  const _ShoeSizeSelection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _ShoeSizeButton(7),
        _ShoeSizeButton(7.5),
        _ShoeSizeButton(8),
        _ShoeSizeButton(8.5),
        _ShoeSizeButton(9),
        _ShoeSizeButton(9.5),
      ],
    );
  }
}

class _ShoeSizeButton extends StatelessWidget {
  const _ShoeSizeButton(
    this.shoeSize, {
    Key key,
  }) : super(key: key);

  final double shoeSize;

  @override
  Widget build(BuildContext context) {
    final ShoeModel shoeModel = Provider.of<ShoeModel>(context);
    
    return GestureDetector(
      onTap: () {
        final ShoeModel shoeModel = Provider.of<ShoeModel>(context, listen: false);
        shoeModel.shoeSize = this.shoeSize;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${shoeSize.toString().replaceAll('.0', '')}',
          style: TextStyle(
            //* Change to main color.
            color: (this.shoeSize == shoeModel.shoeSize) ? Colors.white : Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 42.5,
        height: 42.5,
        decoration: BoxDecoration(
          //* Change color according to main color.
          color: (this.shoeSize == shoeModel.shoeSize) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            if (this.shoeSize == shoeModel.shoeSize)
              BoxShadow(
                //* Change to main color.
                color: Color(0xffF1A23A),
                blurRadius: 10.0,
                offset: Offset(0, 5),
              ),
          ],
        ),
      ),
    );
  }
}
