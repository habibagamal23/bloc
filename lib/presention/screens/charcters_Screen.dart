import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/mycolors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/busnis_logic/cubit/charctrstic_cubit.dart';
import 'package:flutter_application_1/presention/widgit/charcterList.dart';

import '../../data/models/charcters.dart';

class CharcterScreen extends StatefulWidget {
  const CharcterScreen({Key? key}) : super(key: key);

  @override
  _CharcterScreenState createState() => _CharcterScreenState();
}

class _CharcterScreenState extends State<CharcterScreen> {
  late List<Characterrs> allCharacters;
  late List<Characterrs> searchedForCharacters;

  Widget blocbuildwidgit() {
    return BlocBuilder<CharctrsticCubit, CharctrsticState>(
        builder: ((context, state) {
      if (state is Charcterloaded) {
        allCharacters = (state).charcter.cast<Characterrs>();
        return listLoadedWdgit();
      } else {
        return showLoadingIndicator();
      }
    }));
  }

  Widget listLoadedWdgit() {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromRGBO(52, 58, 64, 1),
        child: Column(
          children: [
            buildCharcterList(),
          ],
        ),
      ),
    );
  }

  Widget buildCharcterList() {
    return GridView.builder(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          return Charcterlist(
            characters: allCharacters[index],
          );
        });
  }

  Widget showLoadingIndicator() {
    // ignore: prefer_const_constructors
    return Center(
      child: const CircularProgressIndicator(
        color: MyColors.myYellow,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CharctrsticCubit>(context).getAllCharcter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text("Charcters"),
      ),
      body: blocbuildwidgit(),
    );
  }
}
