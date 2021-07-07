import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

  void _setRatingAs1() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAs2() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAs3() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print('rating = ' + _rating.toString());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _rating >= 1 ?
            Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,),
            onPressed: () { _setRatingAs1(); },
            color: Colors.red,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _rating >= 2 ?
            Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,),
            onPressed: () { _setRatingAs2(); },
            color: Colors.green,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _rating >= 3 ?
            Icon(Icons.star, size: _size,) :
            Icon(Icons.star_border, size: _size,),
            onPressed: () { _setRatingAs3(); },
            color: Colors.blue,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
