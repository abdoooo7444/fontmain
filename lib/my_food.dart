import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ect_project/api/food_api.dart';
import 'package:ect_project/model/food_models.dart';
import 'package:flutter/material.dart';

class foodspage extends StatefulWidget {
  @override
  State<foodspage> createState() => _TicketsState();
}

class _TicketsState extends State<foodspage> {
  Future<List<FoodModels>>? _futureFilms;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _futureFilms = getfood(); // Assign the Future to _futureFilms
  }

  Future<List<FoodModels>> getfood() async {
    try {
      print("==============================================");
      print("==============================================");
      final films = await foodApiServices().getfood();
      print(films[0].name);
      print(films[0].price);
      return films;
    } catch (e) {
      throw Exception('Failed to load films');
    }
  }

  void deletefood(FoodModels film) async {
    try {
      print("====================================");
      final response = await foodApiServices().deletefood(film);

      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Deleted Successfully'),
            backgroundColor: Colors.green,
          ),
        );
        setState(() {
          _futureFilms = getfood(); // Refresh the list after deletion
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Unexpected error. Please try again.'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error deleting property. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
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
            'Cards',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<FoodModels>>(
          future: _futureFilms,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              List<FoodModels> films = snapshot.data ?? [];
              return ListView.builder(
                itemCount: films.length,
                itemBuilder: (context, index) {
                  return MovieCard(
                    film: films[index],
                    onDelete: () {
                      deletefood(films[index]);
                    },
                  );
                },
              );
            }
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MovieCard extends StatelessWidget {
  final FoodModels film;
  final VoidCallback onDelete;

  MovieCard({required this.film, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMovieDetails(context);
      },
      child: Container(
        width: 250,
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
                  Text('   name     : ${film.name}'),
                  Text('Ticket Price: \$${film.price}'),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.all(10),
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
          ),
          actions: [
            InkWell(
              onTap: () {
                _showAwesomeDialog(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Delete Card',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAwesomeDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.rightSlide,
      title: 'Warning',
      desc: 'Are you sure you want to delete this',
      btnCancelOnPress: () {},
      btnOkOnPress: () async {
        onDelete(); // Trigger the onDelete callback
      },
    ).show();
  }
}
