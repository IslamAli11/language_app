import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/item_screen.dart';

class NumberScreen extends StatefulWidget {
  NumberScreen({Key? key,}) : super(key: key);

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  List<Item> number = [
    Item(
      image: 'assets/images/numbers/number_one.png',
      englishName: 'One',
      japanName: 'Ichi',
      sound: 'number_one_sound.mp3',
    ),
    Item(
        image: 'assets/images/numbers/number_two.png',
        englishName: 'Two',
        japanName: '2',
        sound: 'number_two_sound.mp3'
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      englishName: 'Three',
      japanName: 'San',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      englishName: 'Four',
      japanName: 'Shi',
      sound:'number_four_sound.mp3',
    ),
    Item(
        englishName: 'Five',
        japanName: 'Go',
        image:'assets/images/numbers/number_five.png',
        sound: 'number_five_sound.mp3'
    ),
    Item(
        englishName: 'Six',
        japanName: 'Roku',
        image: 'assets/images/numbers/number_six.png',
        sound: 'number_six_sound.mp3'
    ),
    Item(
        englishName: 'Seven',
        japanName: 'Sebun',
        image: 'assets/images/numbers/number_seven.png',
        sound: 'number_seven_sound.mp3'
    ),
    Item(
        englishName: 'Eight',
        japanName: '8',
        image: 'assets/images/numbers/number_eight.png',
        sound: 'number_eight_sound.mp3'
    ),
    Item(
        englishName: 'Nine',
        japanName: 'Kyū',
        image: 'assets/images/numbers/number_nine.png',
        sound: 'number_nine_sound.mp3'
    ),
    Item(
        englishName: 'Ten',
        japanName: 'Jū',
        image: 'assets/images/numbers/number_ten.png',
        sound: 'number_ten_sound.mp3'
    ),
  ];
  AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Number',style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder:(context , index)=>Container(
          width: double.infinity,
          height: 100.0,
          child: Row(
            children: [
              Image(image: AssetImage('${number[index].image}')),
              Container(
                height: 100.0,
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${number[index].japanName}'
                      , style: TextStyle(fontSize: 18.0),),
                    Text(
                      '${number[index].englishName}' ,
                      style: TextStyle(fontSize: 18.0),),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed:(){
                    player.play('${number[index].sound}');
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