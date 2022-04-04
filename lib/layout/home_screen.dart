import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/moduls/colors_screen.dart';
import 'package:language_app/moduls/family_member_screen.dart';
import 'package:language_app/moduls/number_screen.dart';
import 'package:language_app/moduls/phrases_screen.dart';
import 'package:language_app/shared/component/component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'TOKU',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              child: const Image(
                image: AssetImage(
                  'assets/images/japanes.jfif',
                ),
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 15.0,),
          Row(
            children: [
              homeItem(
                onPress: (){
                  navigateTo(
                      context: context,
                      widget: FamilyMemberScreen()
                  );
                },
                  text: 'Family Member',
                  image: 'assets/images/family-members.jpg'),
              Expanded(
                  child: homeItem(
                    onPress: (){
                      navigateTo(context: context, widget: NumberScreen());
                    },
                      text: 'Numbers', image: 'assets/images/number.png'))
            ],
          ),
          const SizedBox(height: 15.0,),
          Row(
            children: [
              homeItem(
                onPress: (){
                  navigateTo(
                     context: context,
                    widget: ColorsScreen()
                  );
                },
                  text: 'Colors', image: 'assets/images/colors.jfif'
              ),
              Expanded(
                  child: homeItem(
                    onPress: (){
                      navigateTo(context: context, widget: PhrasesScreen());
                    },
                      text: 'Phrases', image: 'assets/images/phrases-1.jpg')),
            ],
          ),
        ],
      ),
    );
  }
}
