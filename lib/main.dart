import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'map Demo',
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget{
  _Homepage createState()=>_Homepage();
}

GoogleMapController map_contr;

class _Homepage extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(23.0271,72.5515),
            zoom: 15
            ),
            onMapCreated: (contoller)
            {
              setState(() {
                map_contr=contoller;
              });
            },
          )
      ],
    );
  }
}