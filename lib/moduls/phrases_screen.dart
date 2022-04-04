import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/item_screen.dart';
class PhrasesScreen extends StatefulWidget {
  PhrasesScreen({Key? key,}) : super(key: key);

  @override
  _PhrasesScreenState createState() => _PhrasesScreenState();
}

class _PhrasesScreenState extends State<PhrasesScreen> {
  @override
  List<Item> phrases = [
    Item(
      englishName: 'Are you coming',
      japanName: 'Kimasu ka',
      sound: 'are_you_coming.wav',
    ),
    Item(

        englishName: 'Don\'t forget to subscribe ' ,
        japanName: 'Kōdoku suru koto o wasurenaide kudasai',
        sound: 'dont_forget_to_subscribe.wav'
    ),
    Item(
      englishName: 'How are you feeling',
      japanName: 'Go kibun wa ikagadesu ka',
      sound: 'how_are_you_feeling.wav',
    ),
    Item(
      englishName: 'I love anime',
      japanName: 'Watashi wa anime ga daisukidesu',
      sound:'i_love_anime.wav',
    ),
    Item(
        englishName: 'I love programming',
        japanName: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'i_love_programming.wav'
    ),
    Item(
        englishName: 'Programming is easy',
        japanName: 'Puroguramingu wa kantandesu',
        sound: 'programming_is_easy.wav'
    ),
    Item(
        englishName: 'What is your name',
        japanName: 'Namae wa nandesu ka',
        sound: 'what_is_your_name.wav'
    ),
    Item(
        englishName: 'Where are you going',
        japanName: 'Doko ni iku no',
        sound: 'where_are_you_going.wav'
    ),
    Item(
        englishName: 'Yes i\'m coming',
        japanName: 'Hai, kimasu',
        sound: 'yes_im_coming.wav'
    ),
  ];
  AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Phrases',style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder:(context , index)=>Container(
          width: double.infinity,
          height: 150.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 130.0,
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            '${phrases[index].japanName}'
                            , style: TextStyle(fontSize: 18.0),),
                        ),

                        Expanded(
                          child: Text(
                            '${phrases[index].englishName}' ,
                            style: TextStyle(fontSize: 18.0),),
                        ),
                      ],
                    ),
                  ),
                ),

                IconButton(
                    onPressed:(){
                      player.play('${phrases[index].sound}');
                    },
                    icon:Icon(Icons.play_circle_outline)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}