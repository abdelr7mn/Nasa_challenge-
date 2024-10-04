import 'package:flutter/material.dart';

class CultvationView extends StatelessWidget {
  static const String routeName = 'CultvationView';

  const CultvationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cultivation Tips"),
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/image2.webp"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'As humans explore space, we will want to bring plants for both aesthetic and practical reasons. We already know from our pioneering astronauts that fresh flowers and gardens on the International Space Station create a beautiful atmosphere and let us take a little piece of Earth with us on our journeys. They’re good for our psychological well-being on Earth and in space. They also will be critical for keeping astronauts healthy on long-duration missions.A lack of vitamin C was all it took to give sailors scurvy, and vitamin deficiencies can cause a number of other health problems. Simply packing some multi-vitamins will not be enough to keep astronauts healthy as they explore deep space. They will need fresh produce.Right now on the space station, astronauts receive regular shipments of a wide variety of freeze-dried and prepackaged meals to cover their dietary needs – resupply missions keep them freshly stocked. When crews venture further into space, traveling for months or years without resupply shipments, the vitamins in prepackaged form break down over time, which presents a problem for astronaut health.NASA is looking at ways to provide astronauts with nutrients in a long-lasting, easily absorbed form—freshly grown fresh fruits and vegetables. The challenge is how to do that in a closed environment without sunlight or Earth’s gravity.',style: TextStyle(fontSize: 15),),
          )
        ],
      ),
    );
  }
}
