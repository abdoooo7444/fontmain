import 'package:flutter/material.dart';

class Policies extends StatelessWidget {
  const Policies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Policies',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
         ),
         body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to our Cinema!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Policies:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Text(
              '1- Outside food and drinks are not allowed.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '2- Please arrive at least 15 minutes before the showtime.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '3- Smoking is strictly prohibited inside the cinema hall.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '4- Mobile phones must be turned off during the movie.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '5- Tickets once booked cannot be refunded.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '6- Proper attire is required.',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '7- No talking during the movie.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '8- Children under 12 must be accompanied by an adult.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '9- No recording or photography inside the cinema hall.',
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            Text(
              '10- Latecomers may not be allowed entry to the movie.',
              style: TextStyle(fontSize: 20),
            ),
              Divider(),
            Text(
              '11- Please don’t litter, use trash cans provided.',
              style: TextStyle(fontSize: 20),
            ),
              Divider(),
            Text(
              '12- No pets allowed inside the cinema premises.',
              style: TextStyle(fontSize: 20),
            ),
              Divider(),
            Text(
              '13- All guests must wear masks at all times.',
              style: TextStyle(fontSize: 20),
            ),
              Divider(),
            Text(
              '14- Be considerate of other viewers’ enjoyment.',
              style: TextStyle(fontSize: 20),
            ),
              Divider(),
            Text(
              '15- The cinema is not responsible for lost items.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 24),
            Text(
              'Enjoy the movie!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),

    ),
     );
  }
}