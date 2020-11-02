import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildListView() {
    return Container();
  }

  List<Map> getData() {
    // Futuramente vamos pegar esses dados da uma API
    // Por agora, geramos dados fake
    List<Map> data = [];
    for (int i = 1; i < 11; i++) {
      Map pokemon = {
        'title': 'Pokemon $i',
        'subtitle': 'abc',
        'url': 'https://pokeres.bastionbot.org/images/pokemon/$i.png',
      };
      data.add(pokemon);
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.lightBlue.withOpacity(0.5),
        child: buildListView(),
      ),
    );
  }
}

class PokemonFavButton extends StatefulWidget {
  @override
  _PokemonFavButtonState createState() => _PokemonFavButtonState();
}

class _PokemonFavButtonState extends State<PokemonFavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(width: 32, height: 32);
  }
}

class PokemonListItem extends StatelessWidget {
  PokemonListItem({this.title, this.subtitle, this.url});

  final String title;
  final String subtitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(width: 32, height: 32),
    );
  }
}
