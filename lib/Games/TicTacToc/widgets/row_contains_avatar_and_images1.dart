import 'package:flutter/material.dart';
import 'package:intelligent_learning/Games/TicTacToc/widgets/circle_avatar_widget1.dart';
import 'package:intelligent_learning/Games/TicTacToc/constants.dart';
import 'package:intelligent_learning/Games/TicTacToc/Models/UiLogic.dart';

class RowAvatarImages1 extends StatefulWidget{

  @override
  _RowAvatarImages1State createState() => _RowAvatarImages1State();
}

class _RowAvatarImages1State extends State<RowAvatarImages1> {

  @override
  Widget build(BuildContext context) {

    void toggleColor(String name){

      UI.avatar1Map.keys.forEach((key){
        UI.avatar1Map[key] = kSettingsBoxColor;
      });

      setState(() {
        UI.avatar1Map[name] = kProfileContainerColor;
        UI.player1ImageName = name;
      });
    }

    return Row(
        children: [
          Text("Avatar",style: kSettingsBoxLetterStyle),
          Expanded(child: CircleAvatarWidget1(imageName: 'avatar-1',onTap: () => toggleColor('avatar-1'))),
          Expanded(child: CircleAvatarWidget1(imageName: 'avatar-2',onTap: () => toggleColor('avatar-2'))),
          Expanded(child: CircleAvatarWidget1(imageName: 'avatar-3',onTap: () => toggleColor('avatar-3'))),
          Expanded(child: CircleAvatarWidget1(imageName: 'avatar-4',onTap: () => toggleColor('avatar-4'))),
        ],
      );
  }
}

