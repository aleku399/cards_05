import 'package:flutter/material.dart';
import 'location_card_renderer.dart';
import 'demo_data.dart';

class LocationCardList extends StatelessWidget {
    LocationCardList({
        super.key,
        required this.locations,
    });

    List<Location> locations;

    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: locations.map((location) {
                return LocationCardRenderer(
                    location: location
                );
            }).toList(),
        );
    }
}