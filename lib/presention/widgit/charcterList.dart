// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/mycolors.dart';

import '../../data/models/charcters.dart';

class Charcterlist extends StatelessWidget {
  final Characterrs characters;

  const Charcterlist({Key? key, required this.characters}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: EdgeInsetsDirectional.all(4),
        decoration: BoxDecoration(
          color: MyColors.myWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: GridTile(
          child: Container(
            color: MyColors.myGrey,
            child: Image.asset(characters.img),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              '${characters.name}',
              style: TextStyle(
                height: 1.3,
                fontSize: 16,
                color: MyColors.myWhite,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
