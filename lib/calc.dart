import 'package:flutter/material.dart';

class CalcHome extends StatelessWidget {
  static const String routeName = 'CalcHome';
  const CalcHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fertilizer Calculator"),),
      body: ListView(
        children: [
          Image.asset("assets/images/image3.webp"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Text('Growing food aboard the International Space Station is one of the many research investigations ripe for long duration spaceflight missions to the Moon and Mars.NASA astronaut Frank Rubio recently shared the saucy story of two rogue tomatoes, which he had accidentally lost track of while harvesting for the eXposed Root On-Orbit Test System (XROOTS) experiment he conducted aboard the space station in 2022. The experiment uses hydroponic and aeroponic techniques to grow plants without soil or other growth media and could provide suitable solutions for plant systems needed for future space exploration missions.While celebrating the space station’s 25th anniversary of operations, Expedition 70 crew members revealed they found the lost tomatoes, joking that Rubio did not eat the tomatoes as they suspected. Despite being nearly a year after the initial disappearance of the tomatoes, the fruit was found in a plastic bag dehydrated and slightly squished. Other than some discoloration, it had no visible microbial or fungal growth During his U.S. record-breaking 371-day stay aboard station, Rubio also conducted another a-peeling experiment for the VEG-05 study, which helps address the need for a continuous fresh-food production system in space. This experiment used the space station’s Veggie facility to grow dwarf tomatoes focusing on the impact of light quality and fertilizer on fruit production, microbial food safety, nutritional value, and taste acceptability by the crew.While the rogue tomatoes found from the XROOTS experiment will not be returning to Earth for analysis as they were discarded, plant research aboard space station continues with Plant Habitat-03, returning to Earth during the upcoming splashdown of SpaceX’s 29th commercial resupply mission. Plant Habitat-03 is one of the first multi-generational plant studies aboard the space station which could help researchers assess whether genetic adaptations in one generation of plants grown in space can transfer to the next. Results from this study could help identify genetic elements that increase the adaptability of plants to spaceflight providing insight into how to grow repeated generations of crops to provide food and other services on future space missions.The benefits of growing plants in space don’t stop there, astronauts report there are psychological benefits to time spent gardening, increasing their quality of life in space, and boosting their morale. Research aboard the space station is advancing the technology and scientific knowledge needed to successfully grow plants in space and help humans push the boundaries of space travel. This work also helps efforts to improve plants grown for food and other important uses here on Earth.Read more about plant researc')
          )
            ],
      ),
    );  }
}
