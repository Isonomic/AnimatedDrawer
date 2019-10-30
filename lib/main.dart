import 'package:flutter/material.dart';
import 'package:smart_flare/actors/pan_flare_actor.dart';
import 'package:smart_flare/smart_flare.dart';

void ain() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('prodigy@localwebapps.ca'),
      ),
      body: Container(
        color: Colors.tealAccent,
        child: Align(
          alignment: Alignment.centerRight,
          child: PanFlareActor(
            width: 135.0,
            height: screensize.height,
            filename: 'assets/slideout-menu.flr',
            openAnimation: 'open',
            closeAnimation: 'close',
            direction: ActorAdvancingDirection.RightToLeft,
            threshold: 20.0,
            reverseOnRelease: false,
            completeOnThresholdReached: false,
            activeAreas: [
              RelativePanArea(
                  area: Rect.fromLTWH(0, 0.7, 1.0, 0.3), debugArea: false)
            ],
          ),
        ),
      ),
    );
  }
}
