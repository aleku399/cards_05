import 'package:flutter/material.dart';
import 'demo_data.dart';

class LocationCardRenderer extends StatelessWidget {
    LocationCardRenderer({
        super.key,
        this.cardWidth = 352,
        this.cardHeight = 490,
        required this.location,
    });

    final Location location;
    final double cardWidth;
    final double cardHeight;


    @override
    Widget build(BuildContext context) {
        return Container(
            width: cardWidth,
            height: cardHeight,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4 * 0,
                    ),
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10 + 6 * 0,
                    ),
                ],
            ),
            child: Column(
                children: <Widget>[
                    _buildLocationImage(),
                    Container(
                        margin: EdgeInsets.all(20),
                        child:  _buildLocationData(),
                    ),
                ],
            ),
        );
    }

    Widget _buildLocationImage() {
        return Container(
            child: Stack(
                children: <Widget>[
                    Positioned(
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                            ),
                            child: Image.asset(
                                location.img,
                            ),
                        ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 20,
                        child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(
                                top: 4,
                                bottom: 4,
                                right: 8,
                                left: 8,
                            ),
                            decoration: BoxDecoration(
                                color:  Colors.white,
                                borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                                location.price,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    Widget _buildLocationData() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Container(
                    child: Text(
                        location.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                        ),
                    ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                        location.address,
                    ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                        location.description,
                    ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 18),
                    child: _buildLocationFooter(),
                ),
            ],
        );
    }

    Widget _buildLocationFooter() {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Container(
                    padding: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Colors.black54,
                                width: 2.0,
                            ),
                        ),
                    ),
                    child: Text(
                        '${location.bed} Bed'
                    )
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Colors.black54,
                                width: 2.0,
                            ),
                        ),
                    ),
                    child: Text(
                        '${location.bath} Bath',
                    ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                        '${location.feet} sq. ft'
                    ),
                ),
                Expanded(
                    child: SizedBox(),
                ),
                Container(
                    child: Icon(Icons.favorite_border),
                ),
            ],
        );
    }

}