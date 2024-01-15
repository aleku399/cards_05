import 'package:flutter/material.dart';

class Location {
    Location({
        required this.title,
        required this.address,
        required this.description,
        required this.bed,
        required this.bath,
        required this.feet,
        required this.price,
        required this.img,
    });

    final String title;
    final String address;
    final String description;
    final int bed;
    final int bath;
    final int feet;
    final String price;
    final String img;
}

List<Location> _locations = [
    Location(
        title: 'Lakeview Elegance',
        address: '258 Serenity Lane, Crestwood Hills',
        description: '''Nestled along the tranquil shores of a pristine lake, Lakeview Lakeside offers an idyllic escape into nature's embrace. This exquisite property combines rustic charm with modern luxury, featuring a...''',
        bed: 3,
        bath: 2,
        feet: 7500,
        price: '\$4,750,000',
        img: 'images/lakeview-elegance.png',
    ),
    Location(
        title: 'Vista Paradiso',
        address: '123 Paradise Road, Lakeview',
        description: '''Vista Paradiso is an epitome of modern luxury, nestled against a backdrop of a breathtaking lake and verdant scenery. The home features expansive glass windows and a generous terrace,...''',
        bed: 4,
        bath: 2,
        feet: 7500,
        price: '\$4,500,000',
        img: 'images/skyline-oasis.png',
    ),
    Location(
        title: 'Skyline Oasis',
        address: '450 Metropolitan Ave, Downtown',
        description: '''Skyline Oasis is a beacon of modern urban luxury, located in the heart of the city. This residence features a sleek design with eco-friendly elements, large balconies, and a stunning rooftop...''',
        bed: 3,
        bath: 3,
        feet: 3000,
        price: '\$5,200,000',
        img: 'images/vista-paradiso.png',
    ),
];

class DemoData{
    static List<Location> getLocations() => _locations;
}
