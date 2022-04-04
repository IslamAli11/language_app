import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/item_screen.dart';

class ColorsScreen extends StatefulWidget {
  ColorsScreen({Key? key,}) : super(key: key);

  @override
  _ColorsScreenState createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  List<Item> color = [
    Item(
      image: 'assets/images/colors/color_black.png',
      englishName: 'Black',
      japanName: 'Burakku',
      sound: 'black.wav',
    ),
    Item(
        image: 'assets/images/colors/color_brown.png',
        englishName: 'Brown',
        japanName: 'Chairo',
        sound: 'brown.wav'
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      englishName: 'Dusty Yellow',
      japanName: 'Hokori ppoi kiiro',
      sound: 'dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      englishName: 'Gray',
      japanName: 'Gurē',
      sound:'gray.wav',
    ),
    Item(
        englishName: 'Green',
        japanName: 'Midori',
        image:'assets/images/colors/color_green.png',
        sound: 'green.wav'
    ),
    Item(
        englishName: 'Red',
        japanName: 'Aka',
        image: 'assets/images/colors/color_red.png',
        sound: 'red.wav'
    ),
    Item(
        englishName: 'White',
        japanName: 'Shiro',
        image: 'assets/images/colors/color_white.png',
        sound: 'white.wav'
    ),
    Item(
        englishName: 'Yellow',
        japanName: 'Ki',
        image: 'assets/images/colors/yellow.png',
        sound: 'yellow.wav'
    ),

  ];
  AudioCache player = AudioCache(prefix: 'assets/sounds/colors/');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Colors' ,style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder:(context , index)=>Container(
          width: double.infinity,
          height: 100.0,
          child: Row(
            children: [
              Image(image: AssetImage('${color[index].image}')),
              Container(
                height: 100.0,
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${color[index].japanName}'
                      , style: TextStyle(fontSize: 18.0),),
                    Text(
                      '${color[index].englishName}' ,
                      style: TextStyle(fontSize: 18.0),),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed:(){
                    player.play('${color[index].sound}');
                  },
                  icon:Icon(Icons.play_circle_outline)
              ),
            ],
          ),
        ),
      ),
    );
  }
}