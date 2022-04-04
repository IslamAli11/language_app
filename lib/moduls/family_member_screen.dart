import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/item_screen.dart';

class FamilyMemberScreen extends StatefulWidget {
   FamilyMemberScreen({Key? key,}) : super(key: key);

  @override
  _FamilyMemberScreenState createState() => _FamilyMemberScreenState();
}

class _FamilyMemberScreenState extends State<FamilyMemberScreen> {
  @override
 List<Item> familyMember = [
    Item(
       image: 'assets/images/family_members/family_grandfather.png',
       englishName: 'Grand Father',
       japanName: 'Ojīsan',
       sound: 'grand father.wav',
   ),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        englishName: 'Grand Mother',
        japanName: 'Sobo',
        sound: 'grand mother.wav'
    ),
    Item(
        image: 'assets/images/family_members/family_father.png',
        englishName: 'Father',
        japanName: 'Chichioya',
        sound: 'father.wav',
    ),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        englishName: 'Mother',
        japanName: 'Hahaoya',
        sound:'mother.wav',
    ),
    Item(
        englishName: 'Older Brother',
        japanName: 'Kyōdai',
        image:'assets/images/family_members/family_older_brother.png',
        sound: 'older bother.wav'
    ),
    Item(
        englishName: 'Sister',
        japanName: 'Imōto',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'older sister.wav'
    ),
    Item(
        englishName: 'Son',
        japanName: 'Musuko',
        image: 'assets/images/family_members/family_son.png',
        sound: 'son.wav'
    ),
    Item(
        englishName: 'Younger Brother',
        japanName: 'Otōto',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'younger brohter.wav'
    ),
    Item(
        englishName: 'Younger Sister',
        japanName: 'Imōto',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'younger sister.wav'
    ),
  ];
  AudioCache player = AudioCache(prefix: 'assets/sounds/family_members/');

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('Family Member',style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
          itemBuilder:(context , index)=>Container(
            width: double.infinity,
            height: 100.0,
            child: Row(
              children: [
                Image(image: AssetImage('${familyMember[index].image}')),
                Container(
                  height: 100.0,
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${familyMember[index].japanName}'
                        , style: TextStyle(fontSize: 18.0),),
                      Text(
                        '${familyMember[index].englishName}' ,
                        style: TextStyle(fontSize: 18.0),),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed:(){
                   player.play('${familyMember[index].sound}');
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
