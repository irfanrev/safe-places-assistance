import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart' as latLng;

class MapBox extends StatefulWidget {
  const MapBox({Key? key}) : super(key: key);

  @override
  _MapBoxState createState() => _MapBoxState();
}

class _MapBoxState extends State<MapBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox.expand(
      child: Stack(
        children: [
          SizedBox.expand(
            child: FlutterMap(
              options: MapOptions(
                center: latLng.LatLng(-6.920256, 106.926294),
                zoom: 16.0,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/irfanrev/ckyy14nmg002i15p7dmad3zfk/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaXJmYW5yZXYiLCJhIjoiY2t5eHYzYnBoMG0wNjJ2bzJsdmVmYTJuciJ9.4B_V8Hbrff-1_045m2ULRA",
                  additionalOptions: {
                    'accessToken':
                        'pk.eyJ1IjoiaXJmYW5yZXYiLCJhIjoiY2t5eHYzYnBoMG0wNjJ2bzJsdmVmYTJuciJ9.4B_V8Hbrff-1_045m2ULRA',
                    'id': 'mapbox.mapbox-streets-v8'
                  },
                  attributionBuilder: (_) {
                    return Text("© OpenStreetMap contributors");
                  },
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: latLng.LatLng(-6.920256, 106.926294),
                      builder: (ctx) => Container(
                          child: Icon(
                        Icons.location_on,
                        color: Colors.green,
                        size: 40,
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 110,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Safe Rate : 96%',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Range : 200m',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.defaultDialog(
                                  title: 'Proccess',
                                  middleText:
                                      'Select Your Location, every where!');
                            },
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          Text(
                            'Navigate',
                            style: GoogleFonts.poppins(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    )));
  }
}
