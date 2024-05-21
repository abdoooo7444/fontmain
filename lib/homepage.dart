import 'package:ect_project/FavoritesPage.dart';
import 'package:ect_project/add_film.dart';
import 'package:ect_project/api/api_card.dart';
import 'package:ect_project/api/card_film.dart';
import 'package:ect_project/home_two.dart';
import 'package:flutter/material.dart';
import 'package:ect_project/api/films_api.dart';
import 'package:ect_project/model/film_model.dart';

class MyMoviesApp extends StatefulWidget {
  @override
  State<MyMoviesApp> createState() => _MyMoviesAppState();
}

class _MyMoviesAppState extends State<MyMoviesApp> {
  late Future<List<FilmModel>> _futureFilms;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _futureFilms = getFilms();
  }

  ////////////////////////getfilm////////////////////////
  Future<List<FilmModel>> getFilms() async {
    try {
      final films = await ApiServices().getfilm();
      return films;
    } catch (e) {
      throw Exception('Failed to load films');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أفلام',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
          title: Text(
            'MOVIES',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        drawerEnableOpenDragGesture: false,
        drawerEdgeDragWidth: 0,
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('beso'), // Use userName here
                accountEmail: Text('abosief@gmail.com'),
                currentAccountPicture: const CircleAvatar(
                    // backgroundImage: AssetImage('Assets/abdo.jpg'),
                    ),
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              // SizedBox(height: 50),
              // ListTile(
              //   title: const Text('Edit your profile'),
              //   leading: Icon(Icons.edit),
              //   onTap: () {
              //     //  Navigator.push(context, MaterialPageRoute(builder: (context) => EditPage(),));
              //   },
              // ),
              ListTile(
                title: const Text(
                  'Favorites',
                  style: TextStyle(fontFamily: "Inria Serif"),
                ),
                leading: const Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritesPage()),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'films',
                  style: TextStyle(fontFamily: "Inria Serif"),
                ),
                leading: const Icon(Icons.favorite),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => films()),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'Contact Us',
                  style: TextStyle(fontFamily: "Inria Serif"),
                ),
                leading: const Icon(Icons.contact_support),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => PaymentPage()));
                },
              ),
              ListTile(
                title: const Text(
                  'Log Out',
                  style: TextStyle(fontFamily: "Inria Serif"),
                ),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("LoginPage", (route) => false);
                },
              ),
            ],
          ),
        ),
        body: FutureBuilder<List<FilmModel>>(
          future: _futureFilms,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              List<FilmModel> films = snapshot.data ?? [];
              return ListView.builder(
                itemCount: films.length,
                itemBuilder: (context, index) {
                  return MovieCard(film: films[index]);
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AfterHome(),
              ),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MovieCard extends StatelessWidget {
  final FilmModel film;

  MovieCard({required this.film});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMovieDetails(context);
      },
      child: Container(
        width: 250, // Fixed width for each card
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/ect.png',
            ),
            Center(
              child: Column(
                children: [
                  Text('   kind     : \$${film.kind}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('   name     : \$${film.name} ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('  title     : \$${film.title}'),
                  Text('Ticket Price: \$${film.price}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMovieDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Ticket Price: \$${film.price}'),
              Text('Name: ${film.name}'),
              Text('Title: ${film.title}'),
              Text('Description: ${film.description}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                cardApiServices().addMovietomycart(film);

                // final scaffoldMessenger = ScaffoldMessenger.of(context);
                // scaffoldMessenger.showSnackBar(SnackBar(
                //   content: Text('Your message here ==============='),
                // ));

                Navigator.of(context).pop();
              },
              child: Text(
                'ticket now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );

    //   final scaffoldMessenger = ScaffoldMessenger.of(context);
    //   scaffoldMessenger.showSnackBar(SnackBar(
    //     content: Text('Your message here'),
    //   ));
  }
}

// void scaffoldKey(BuildContext context, String message, Color color) {
//   final snackBar = SnackBar(
//     content: Text(message),
//     backgroundColor: Colors.green, // Set the background color here
//   );

//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
// }
