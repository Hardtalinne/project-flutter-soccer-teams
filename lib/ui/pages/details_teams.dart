import 'package:flutter/material.dart';
import 'package:project_app/api/api_constants.dart';
import 'package:project_app/models/teams.dart';

class DetailsTeams extends StatelessWidget {
  final Teams teams;

  const DetailsTeams({required this.teams, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, {required}) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teams.name),
      ),
      body: Center(
          child: Column(children: <Widget>[
        const Text(
          'Bandeira',
          style: TextStyle(fontSize: 25),
        ),
        Image.network(
            '${ApiConstants.baseUrlImg}${teams.flag.replaceFirst('~', '')}'),
      ])),
    );
  }
}
