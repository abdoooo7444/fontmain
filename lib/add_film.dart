import 'package:ect_project/api/films_api.dart';
import 'package:ect_project/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ect_project/model/film_model.dart';

class films extends StatefulWidget {
  const films({super.key});

  @override
  State<films> createState() => _ResdintiallPageState();
}

final GlobalKey<FormState> _formKey = GlobalKey();

final filmnameController = TextEditingController();
final titleController = TextEditingController();
final priceController = TextEditingController();
final kindController = TextEditingController();
final actorsController = TextEditingController();
final descriptionController = TextEditingController();

class _ResdintiallPageState extends State<films> {
  @override
  void dispose() {
    _formKey.currentState?.dispose();
    // priceRController.clear();
    // phoneRController.clear();
    // detailsRController.clear();
    // propertyRAdressController.clear();
    super.dispose();
  }

  @override
  void initState() {
    priceController.clear();
    filmnameController.clear();
    titleController.clear();
    kindController.clear();
    actorsController.clear();
    descriptionController.clear();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 206, 25, 25),
        title: const Text(
          'Add new film ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const Row(
                  children: [
                    Text(
                      "film name",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return 'You must choose one';
                    return null;
                  },
                  controller: filmnameController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "price",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "title",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "kind",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return 'You must choose one';
                    return null;
                  },
                  controller: kindController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "actors",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return 'You must choose one';
                    return null;
                  },
                  controller: actorsController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "description",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return 'You must choose one';
                    return null;
                  },
                  controller: descriptionController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Back'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {});
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          final FilmModel film;

                          film = FilmModel(
                              name: filmnameController.text,
                              title: titleController.text,
                              price: int.parse(priceController.text),
                              kind: kindController.text,
                              description: descriptionController.text);

                          final addedProperty =
                              await ApiServices().addMovietcinema(film);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyMoviesApp(),
                              ));
                          setState(() {});
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('add film '),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
