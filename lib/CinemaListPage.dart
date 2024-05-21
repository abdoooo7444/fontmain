// import 'package:flutter/material.dart';
// import 'package:ect_project/PaymentPage.dart';

// class Movie {
//   final String name;
//   final String description;
//   final String image;
//   final double ticketPrice;
//   final String start_time;
//   final String End_time;

//   Movie({
//     required this.name,
//     required this.description,
//     required this.image,
//     required this.ticketPrice,
//     required this.start_time,
//     required this.End_time,
//   });
// }

// class CinemaListPage extends StatefulWidget {
//   @override
//   _CinemaListPageState createState() => _CinemaListPageState();
// }

// class _CinemaListPageState extends State<CinemaListPage> {
//   List<String> governorates = [
//     'Cairo',
//     'Alexandria',
//     'Giza',
//     'Qena',
//     'Asyut',
//   ];

//   Map<String, List<String>> governoratesCinemas = {
//     'Cairo': ['Cinema City', 'Nile City', 'Stars Cinema', '...'],
//     'Alexandria': ['San Stefano', 'Green Plaza', '...'],
//     'Giza': ['City Center', 'Dandy Mega Mall', '...'],
//     'Qena': ['Sun Cinema', 'City Star Cinema', '...'],
//     'Asyut': ['Galaxy Cinema', 'Green Plaza Asyut', '...'],
//   };

//   Map<String, Map<String, List<Movie>>> cinemaMovies = {
//     // 'Cairo': {
//       'Cinema City': [
//         Movie(
//           name: 'Inception',
//           description:
//               ' Inception is a 2010 science fiction film written, directed, and produced by Christopher Nolan. The film stars Leonardo DiCaprio, Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Ellen Page, Cillian Murphy, Tom Hardy, Dilipie Rao, Tom Berenger and Michael Caine.',
//           image:
//               'https://media0033.elcinema.com/uploads/_315x420_2028a02da250c809cc4493409e19f7f80e2f37f9045ef28cf033448f56968505.jpg',
//           ticketPrice: 50,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'The Shawshank Redemption',
//           description:
//               ' The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont based on the 1982 novella by Rita Hayworth and The Shawshank Redemption by Stephen King. The novel tells the story of banker Andy Dufresne, who is sentenced to life imprisonment in Shawshank State Prison for the murder of his wife and her lover. Although he claims his innocence',
//           image:
//               'https://media0033.elcinema.com/uploads/_315x420_317dd713556d9c3fc054919dbb93237d3a3af673d6cd957de48eafd3b26cc6ba.jpg', // استبدال برابط الصورة الثانية
//           ticketPrice: 60,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: '  نبيل الجميل اخصائي تجميل',
//           description:
//               'نبيل الجميل أخصائي تجميل هو فيلم كوميدي مصري عرض عام 2022، بطولتة محمد هنيدي، ونور، ومحمد سلام، ومحمد ثروت، ومحمود حافظ، ورحمة أحمد فرج، والفيلم من تأليف أيمن جمال وإخراج خالد مرعي.',
//           image:
//               'https://media0033.elcinema.com/uploads/_315x420_2519b791f6e8b9ae1ec7fbcbcbfaadff9014c762d0391ee35ad9406ca14c4882.jpg',
//           ticketPrice: 60,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'Nile City': [
//         Movie(
//           name: 'The Dark Knight',
//           description:
//               ' The Dark Knight is a 2008 American-British epic superhero film directed, produced, and co-written by Christopher Nolan, based on the DC Comics character Batman. The film is the second part of Christopher Nolan s Batman trilogy and is a sequel to 2005 s Batman Begins',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/thumb/4/48/%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg/260px-%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: ' واحد تاني',
//           description:
//               'واحد تاني هو فيلم كوميدي مصري من إنتاج سنة 2022. الفيلم من إخراج محمد شاكر خضير وتأليف هيثم دبور وإنتاج تامر مرسي، وبطولة أحمد حلمي، روبي، سيد رجب، أحمد مالك، عمرو عبد الجليل، نسرين أمين، نور إيهاب.',
//           image:
//               'https://www.shorouknews.com/uploadedimages/Other/original/%D9%88%D8%A7%D8%AD%D8%AF%20%D8%AA%D8%A7%D9%86%D9%8A.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Resident Evil: Death Island',
//           description:
//               ' Resident Evil: Death Island is a 2023 Japanese adult computer-animated action biopunk horror film set in the same universe as the Resident Evil video games',
//           image:
//               'https://images.justwatch.com/poster/305700993/s718/resident-evil-death-island.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'Stars Cinema': [
//         Movie(
//           name: 'Nightcrawler',
//           description:
//               ' Nightcrawler is a neo-noir, crime thriller film written and directed by Dan Gilroy in his directorial debut. The film stars Jake Gyllenhaal as a thief who begins photographing accidents and crimes in Los Angeles and then sells them to television news channels. The film also stars Rene Russo, Riz Ahmed and Bill Paxton',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/8/88/Nightcrawler_ver4.jpg',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'The Dark Knight',
//           description:
//               ' The Dark Knight is a 2008 American-British epic superhero film directed, produced, and co-written by Christopher Nolan, based on the DC Comics character Batman. The film is the second part of Christopher Nolan s Batman trilogy and is a sequel to 2005 s Batman Begins',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/thumb/4/48/%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg/260px-%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Nightcrawler',
//           description:
//               ' Nightcrawler is a neo-noir, crime thriller film written and directed by Dan Gilroy in his directorial debut. The film stars Jake Gyllenhaal as a thief who begins photographing accidents and crimes in Los Angeles and then sells them to television news channels. The film also stars Rene Russo, Riz Ahmed and Bill Paxton',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/8/88/Nightcrawler_ver4.jpg',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//     },
//     'Alexandria': {
//       'San Stefano': [
//         Movie(
//           name: 'The Dark Knight',
//           description:
//               ' The Dark Knight is a 2008 American-British epic superhero film directed, produced, and co-written by Christopher Nolan, based on the DC Comics character Batman. The film is the second part of Christopher Nolan s Batman trilogy and is a sequel to 2005 s Batman Begins',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/thumb/4/48/%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg/260px-%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D9%81%D8%A7%D8%B1%D8%B3_%D8%A7%D9%84%D8%B8%D9%84%D8%A7%D9%85_%282008%29.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Nightcrawler',
//           description:
//               ' Nightcrawler is a neo-noir, crime thriller film written and directed by Dan Gilroy in his directorial debut. The film stars Jake Gyllenhaal as a thief who begins photographing accidents and crimes in Los Angeles and then sells them to television news channels. The film also stars Rene Russo, Riz Ahmed and Bill Paxton',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/8/88/Nightcrawler_ver4.jpg',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'Green Plaza': [
//         Movie(
//           name: 'Lord of war',
//           description:
//               ' King of War, or Lord of War, is an American crime drama film, produced in 2005 AD, starring the hero Nicolas Cage.',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/e/e1/%D8%A8%D9%88%D8%B3%D8%AA%D8%B1_%D9%81%D9%8A%D9%84%D9%85_%D9%85%D9%84%D9%83_%D8%A7%D9%84%D8%AD%D8%B1%D8%A8.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'ICE Road',
//           description:
//               ' Ice Road is a 2021 American drama, thriller, and adventure film, written and directed by Jonathan Hensley, and starring Liam Neeson and Laurence Fishburne. The film follows the events of a diamond mine collapse in Canada s far north. An icy driver must navigate an impossible rescue mission over a frozen ocean to rescue trapped miners.',
//           image:
//               'https://media0033.elcinema.com/uploads/_320x_afcef9b0d87b00cfec042d5f6ed381c9554b9415ea07fd07eebf7ea095f19e5c.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//     },
//     'Giza': {
//       'City Center': [
//         Movie(
//           name: 'Dark',
//           description:
//               ' It is a 2018 Austrian horror film written and directed by Justin B. Lange and starring Nadja Alexander, Toby Nicholls, and Karl Markovitch. The plot shows a tireless teenage girl who befriends an abused blind boy and regains humanity in the process',
//           image:
//               'https://media0033.elcinema.com/uploads/_315x420_9951dc21bb3a373d784b57c984584386d068a798a449514adbf5155e7359c86b.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Joker',
//           description:
//               ' Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, which is based on the DC Comics character of the same name, stars Joaquin Phoenix as the Joker',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/thumb/4/4f/%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D8%A7%D9%84%D8%AC%D9%88%D9%83%D8%B1_%282019%29.png/260px-%D9%85%D9%84%D8%B5%D9%82_%D9%81%D9%84%D9%85_%D8%A7%D9%84%D8%AC%D9%88%D9%83%D8%B1_%282019%29.png',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'Dandy Mega Mall': [
//         Movie(
//           name: 'Lord of war',
//           description:
//               ' King of War, or Lord of War, is an American crime drama film, produced in 2005 AD, starring the hero Nicolas Cage.',
//           image:
//               'https://upload.wikimedia.org/wikipedia/ar/e/e1/%D8%A8%D9%88%D8%B3%D8%AA%D8%B1_%D9%81%D9%8A%D9%84%D9%85_%D9%85%D9%84%D9%83_%D8%A7%D9%84%D8%AD%D8%B1%D8%A8.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'ICE Road',
//           description:
//               ' Ice Road is a 2021 American drama, thriller, and adventure film, written and directed by Jonathan Hensley, and starring Liam Neeson and Laurence Fishburne. The film follows the events of a diamond mine collapse in Canada s far north. An icy driver must navigate an impossible rescue mission over a frozen ocean to rescue trapped miners.',
//           image:
//               'https://media0033.elcinema.com/uploads/_320x_afcef9b0d87b00cfec042d5f6ed381c9554b9415ea07fd07eebf7ea095f19e5c.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//     },
//     'Qena': {
//       'Sun Cinema': [
//         Movie(
//           name: 'Doug Days',
//           description:
//               ' Carls Date is a 2023 American computer-animated short film produced by Pixar Animation Studios, written and directed by Bob Peterson and produced by Kim Collins. It stars the voices of Ed Asner and Peterson.',
//           image:
//               'https://m.media-amazon.com/images/M/MV5BZWVhOGU2NjMtZDE4ZS00ZTUwLWExNmYtMTMwMzQ1MTlkNmJlXkEyXkFqcGdeQXVyMTE0MzQwMjgz._V1_.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Resident Evil: Death Island',
//           description:
//               ' Resident Evil: Death Island is a 2023 Japanese adult computer-animated action biopunk horror film set in the same universe as the Resident Evil video games',
//           image:
//               'https://images.justwatch.com/poster/305700993/s718/resident-evil-death-island.jpg',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'City Star Cinema': [
//         Movie(
//           name: 'Green Snake',
//           description:
//               ' Green Snake, known in China as White Snake 2: The Tribulation of the Green Snake, is a 2021 Chinese computer animation fantasy film directed by Amp Wong, with animation production by Light Chaser Animation, Alibaba Pictures, Tianjin Maoyan Weiying Culture Media and Bilibili. It is the sequel to 2019 s White Snake.',
//           image:
//               'https://upload.wikimedia.org/wikipedia/en/7/7c/White_Snake_2%2C_The_Tribulation_of_the_Green_Snake_2021_Movie_Poster.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: ' واحد تاني',
//           description:
//               'واحد تاني هو فيلم كوميدي مصري من إنتاج سنة 2022. الفيلم من إخراج محمد شاكر خضير وتأليف هيثم دبور وإنتاج تامر مرسي، وبطولة أحمد حلمي، روبي، سيد رجب، أحمد مالك، عمرو عبد الجليل، نسرين أمين، نور إيهاب.',
//           image:
//               'https://www.shorouknews.com/uploadedimages/Other/original/%D9%88%D8%A7%D8%AD%D8%AF%20%D8%AA%D8%A7%D9%86%D9%8A.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//     },
//     'Asyut': {
//       'Galaxy Cinema': [
//         Movie(
//           name: '  نبيل الجميل اخصائي تجميل',
//           description:
//               'نبيل الجميل أخصائي تجميل هو فيلم كوميدي مصري عرض عام 2022، بطولتة محمد هنيدي، ونور، ومحمد سلام، ومحمد ثروت، ومحمود حافظ، ورحمة أحمد فرج، والفيلم من تأليف أيمن جمال وإخراج خالد مرعي.',
//           image:
//               'https://media0033.elcinema.com/uploads/_315x420_2519b791f6e8b9ae1ec7fbcbcbfaadff9014c762d0391ee35ad9406ca14c4882.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Doug Days',
//           description:
//               ' Carls Date is a 2023 American computer-animated short film produced by Pixar Animation Studios, written and directed by Bob Peterson and produced by Kim Collins. It stars the voices of Ed Asner and Peterson.',
//           image:
//               'https://m.media-amazon.com/images/M/MV5BZWVhOGU2NjMtZDE4ZS00ZTUwLWExNmYtMTMwMzQ1MTlkNmJlXkEyXkFqcGdeQXVyMTE0MzQwMjgz._V1_.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: 'Resident Evil: Death Island',
//           description:
//               ' Resident Evil: Death Island is a 2023 Japanese adult computer-animated action biopunk horror film set in the same universe as the Resident Evil video games',
//           image:
//               'https://images.justwatch.com/poster/305700993/s718/resident-evil-death-island.jpg',
//           ticketPrice: 70,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//       'Green Plaza Asyut': [
//         Movie(
//           name: 'Green Snake',
//           description:
//               ' Green Snake, known in China as White Snake 2: The Tribulation of the Green Snake, is a 2021 Chinese computer animation fantasy film directed by Amp Wong, with animation production by Light Chaser Animation, Alibaba Pictures, Tianjin Maoyan Weiying Culture Media and Bilibili. It is the sequel to 2019 s White Snake.',
//           image:
//               'https://upload.wikimedia.org/wikipedia/en/7/7c/White_Snake_2%2C_The_Tribulation_of_the_Green_Snake_2021_Movie_Poster.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//         Movie(
//           name: ' واحد تاني',
//           description:
//               'واحد تاني هو فيلم كوميدي مصري من إنتاج سنة 2022. الفيلم من إخراج محمد شاكر خضير وتأليف هيثم دبور وإنتاج تامر مرسي، وبطولة أحمد حلمي، روبي، سيد رجب، أحمد مالك، عمرو عبد الجليل، نسرين أمين، نور إيهاب.',
//           image:
//               'https://www.shorouknews.com/uploadedimages/Other/original/%D9%88%D8%A7%D8%AD%D8%AF%20%D8%AA%D8%A7%D9%86%D9%8A.jpg',
//           ticketPrice: 45,
//           start_time: '10 pm',
//           End_time: '10.45 pm',
//         ),
//       ],
//     },
//   };

//   String selectedGovernorate = 'Cairo';
//   String selectedCinema = 'Cinema City';
//   String searchQuery = '';
//   List<Movie> selectedCinemaMovies = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.red,
//         elevation: 0.0,
//         title: Text(
//           'Cinema List',
//           style: TextStyle(
//             fontSize: 25.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search
//           TextField(
//             onChanged: (value) {
//               setState(() {
//                 searchQuery = value.toLowerCase();
//               });
//             },
//             decoration: InputDecoration(
//               hintText: 'Search Cinema',
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red),
//               ),
//               prefixIcon: Icon(
//                 Icons.search,
//                 color: Colors.red,
//               ),
//               prefixStyle: TextStyle(color: Colors.red),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Select Governorate:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           // Governorate
//           DropdownButton<String>(
//             value: selectedGovernorate,
//             onChanged: (String? newValue) {
//               setState(() {
//                 selectedGovernorate = newValue!;
//                 selectedCinema = governoratesCinemas[selectedGovernorate]![0];
//                 selectedCinemaMovies =
//                     cinemaMovies[selectedGovernorate]![selectedCinema]!;
//               });
//             },
//             items: governorates.map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//           // Cinema
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Select Cinema:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               children: governoratesCinemas[selectedGovernorate]!
//                   .where((cinema) => cinema.toLowerCase().contains(searchQuery))
//                   .map((cinema) {
//                 return ListTile(
//                   title: Text(cinema),
//                   onTap: () {
//                     setState(() {
//                       selectedCinema = cinema;
//                       selectedCinemaMovies =
//                           cinemaMovies[selectedGovernorate]![selectedCinema]!;
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//           // Movies
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Movies at $selectedCinema:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: selectedCinemaMovies.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(selectedCinemaMovies[index].name),
//                   onTap: () {
//                     _showMovieDetails(selectedCinemaMovies[index]);
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showMovieDetails(Movie movie) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(movie.name),
//           content: Column(
//             children: [
//               Image.network(
//                 movie.image,
//                 height: 100,
//                 width: 100,
//                 fit: BoxFit.cover,
//               ),
//               Text(movie.description),
//               Row(
//                 children: [
//                   Text('Ticket Price: \$${movie.ticketPrice}'),
//                 ],
//               ),
//               Text('Start Time: ${movie.start_time}'),
//               Text('End Time: ${movie.End_time}'),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => PaymentPage()));
//                 },
//                 child: Text(
//                   'Ticket Booking',
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 'Close',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
