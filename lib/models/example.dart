// import 'package:flutter/cupertino.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter/material.dart';

// class Example {
//   String name;
//   String address;
//   LatLng locationCoords;
//   Widget image;
//   String no;

//   Example({
//     required this.name,
//     required this.address,
//     required this.locationCoords,
//     required this.image,
//     required this.no,
//   });
// }

// final List<Example> exnames = [
//   Example(
//     address: 'Kampala Center',
//     name: 'Kampala_Foundation',
//     no: '9012345678',
//     locationCoords: LatLng(0.313611, 32.581111),
//     image: Image(
//       image: AssetImage('assets/images/a1.jpg'),
//       width: 80.0,
//     ),
//   ),
//   Example(
//     address: 'Entebbe Center',
//     name: 'Entebbe_Ministries',
//     no: '1234567890',
//     locationCoords: LatLng(0.042194, 32.443673),
//     image: Image(
//       image: AssetImage('assets/images/a2.jpg'),
//       width: 80.0,
//     ),
//   ),
//   Example(
//     address: 'Gulu center',
//     name: 'Gulu_Trust',
//     no: '2345678901',
//     locationCoords: LatLng(2.781198, 32.279474),
//     image: Image(
//       image: AssetImage('assets/images/a3.jpg'),
//       width: 80.0,
//       height: 160.0,
//     ),
//   ),
//   Example(
//     address: 'Mbarara Center',
//     name: 'Mbarara_CF',
//     no: '3456789012',
//     locationCoords: LatLng(-0.604850, 30.648688),
//     image: Image(
//       image: AssetImage('assets/images/a4.jpg'),
//       width: 80.0,
//     ),
//   ),
//   Example(
//     address: 'Jinja Center',
//     name: 'Jinja_CF',
//     no: '4567890123',
//     locationCoords: LatLng(0.425776, 33.203483),
//     image: Image(
//       image: AssetImage('assets/images/a5.jpg'),
//       width: 60.0,
//     ),
//   ),
//   Example(
//     address: 'Mbale Center',
//     name: 'Mbale_CF',
//     no: '5678901234',
//     locationCoords: LatLng(1.075477, 34.181242),
//     image: Image(
//       image: AssetImage('assets/images/a6.jpg'),
//       width: 60.0,
//       height: 180.0,
//     ),
//   ),
//   Example(
//     address: 'Masaka Center',
//     name: 'Masaka_CF',
//     no: '6789012345',
//     locationCoords: LatLng(-0.312903, 31.714235),
//     image: Image(
//       image: AssetImage('assets/images/a7.jpg'),
//       height: 150.0,
//       width: 70.0,
//     ),
//   ),
// ];
//

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Example {
  String name;
  String address;
  LatLng locationCoords;
  Widget image;
  String no;

  Example({
    required this.name,
    required this.address,
    required this.locationCoords,
    required this.image,
    required this.no,
  });
}

final List<Example> exnames = [
  Example(
    address: 'Kampala Center',
    name: 'Kampala_Charify',
    no: '0781234561',
    locationCoords: LatLng(0.3136, 32.5811),
    image: Image(
      image: AssetImage('assets/images/a1.jpg'),
      width: 80.0,
    ),
  ),
  Example(
    address: 'Entebbe Center',
    name: 'Entebbe_Charify',
    no: '0789294561',
    locationCoords: LatLng(0.0527, 32.4637),
    image: Image(
      image: AssetImage('assets/images/a2.jpg'),
      width: 80.0,
    ),
  ),
  Example(
    address: 'Jinja Center',
    name: 'Jinja_Charify',
    no: '0751234561',
    locationCoords: LatLng(0.4244, 33.2041),
    image: Image(
      image: AssetImage('assets/images/a3.jpg'),
      width: 80.0,
    ),
  ),
  Example(
    address: 'Gulu Center',
    name: 'Gulu_Charify',
    no: '0741234567',
    locationCoords: LatLng(2.7746, 32.2980),
    image: Image(
      image: AssetImage('assets/images/a4.jpg'),
      width: 80.0,
    ),
  ),
  Example(
    address: 'Mbarara Center',
    name: 'Mbarara_Charify',
    no: '0778123561',
    locationCoords: LatLng(-0.6058, 30.6489),
    image: Image(
      image: AssetImage('assets/images/a5.jpg'),
      width: 60.0,
    ),
  ),
  Example(
    address: 'Mbale Center',
    name: 'Mbale_Charify',
    no: '0768123569',
    locationCoords: LatLng(1.0641, 34.1792),
    image: Image(
      image: AssetImage('assets/images/a6.jpg'),
      width: 60.0,
    ),
  ),
  Example(
    address: 'Fort Portal Center',
    name: 'FortPortal_Charify',
    no: '0754322299',
    locationCoords: LatLng(0.6934, 30.2736),
    image: Image(
      image: AssetImage('assets/images/a7.jpg'),
      height: 150.0,
      width: 70.0,
    ),
  ),
];
