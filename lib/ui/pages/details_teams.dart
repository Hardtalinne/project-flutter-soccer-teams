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
          title: const Text('Detalhes'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
              child: Column(children: <Widget>[
            Text(
              teams.name,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              '${ApiConstants.baseUrlImg}${teams.flag.replaceFirst('~', '')}',
              width: 250,
              height: 250,
            ),
          ])),
        ));
  }
}
