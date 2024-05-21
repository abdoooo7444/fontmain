import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class Favorite {
  final String title;
  final String director;

  Favorite({required this.title, required this.director});
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Favorite> favorites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Favorites',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final favorite = favorites[index];
          return FavoriteItem();
        },
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('hiiiiiiiiiiii'),
            Text('hiiiiiiiiiiii'),
            Text('hiiiiiiiiiiii'),
            Text('hiiiiiiiiiiii'),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
