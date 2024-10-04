import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nasa_app/pest.dart';
import 'calc.dart';
import 'cultvation.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AgriGuard',
          style: TextStyle(fontSize: 35),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 40),
            onPressed: () {
              // Action for camera
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.grain, size: 40), // Icon for the app
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today, Oct 4th", style: TextStyle(fontSize: 25)),
                    Text(" Net / 33°C",
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                  ],
                ),
                Text("33 °C", style: TextStyle(fontSize: 20)),
                Icon(Icons.wb_sunny, size: 35, color: Colors.orange),
              ],
            ),
            SizedBox(height: 20),

            // Slider placeholder for images or videos
            Container(
              height: 170,
              width: 300,
              color: Colors.grey[300], // Placeholder color
              child: Center(

                child:
                Image.asset("assets/images/image1.jpg"),
              ),
            ),
            SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CultvationView.routeName);
                    },
                    child: buildMenuItem('Cultivation Tips',Icons.info,)),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CalcHome.routeName);
                    },
                    child: buildMenuItem('Fertilizer Calculator', Icons.calculate)),

                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PestHome.routeName);
                    },child: buildMenuItem('Pest and Alert', Icons.battery_alert)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(icon, size: 26),
          SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
