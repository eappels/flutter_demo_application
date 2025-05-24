import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: 'OSM Flutter Application',  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: const OSMFlutterMap(),  
    );  
  }  
}  

class OSMFlutterMap extends StatefulWidget {
  const OSMFlutterMap({super.key});

  @override
  State<OSMFlutterMap> createState() => _OSMFlutterMapState();
}

class _OSMFlutterMapState extends State<OSMFlutterMap> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}