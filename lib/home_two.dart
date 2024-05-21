import 'package:ect_project/FoodPage.dart';
import 'package:ect_project/add_film.dart';
import 'package:ect_project/my_food.dart';
import 'package:ect_project/tickets.dart';
import 'package:flutter/material.dart';

class AfterHome extends StatefulWidget {
  const AfterHome({super.key});

  @override
  State<AfterHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AfterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 206, 25, 25),
        title: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            'films',
            style: TextStyle(
              color: Color.fromARGB(255, 247, 247, 247),
              fontSize: 30,
              fontFamily: 'AlexBrush',
            ),
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Divider(
              //   thickness: 3,
              //   height: 5.0,
              //   color: Colors.black12,
              // ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 150,
                height: 100,
                child: OutlinedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                        fontSize: 10, fontFamily: 'Merriweather'),
                    side: const BorderSide(width: 0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tickets(),
                      ),
                    );
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.card_giftcard,
                    color: Colors.red,
                    size: 40,
                  ),
                  label: const Text(
                    "my card",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 100,
                    child: OutlinedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'Merriweather',
                        ),
                        side: const BorderSide(width: 0, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => films(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.tv,
                        color: Colors.red,
                        size: 30,
                      ),
                      label: const Text(
                        "add film",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 100,
                    child: OutlinedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'Merriweather',
                        ),
                        side: const BorderSide(width: 0, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodPage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.food_bank_rounded,
                        color: Colors.red,
                        size: 30,
                      ),
                      label: const Text(
                        "add foods ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 100,
                    child: OutlinedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'Merriweather',
                        ),
                        side: const BorderSide(width: 0, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => foodspage(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 30,
                      ),
                      label: const Text(
                        "my foods ",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
