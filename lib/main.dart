import 'package:flutter/material.dart';
import 'package:apple_maps_flutter/apple_maps_flutter.dart';

void main() => runApp(AppleMapsExample());

class AppleMapsExample extends StatelessWidget {
  late AppleMapController mapController;

  void _onMapCreated(AppleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            child: AppleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(0.0, 0.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}