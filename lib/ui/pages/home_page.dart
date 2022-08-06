import 'package:flutter/material.dart';
import 'package:project_app/api/api.dart';
import 'package:project_app/models/teams.dart';
import 'package:project_app/ui/pages/details_teams.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Teams>? _teams = [];

  @override
  void initState() {
    super.initState();
    _get();
  }

  void _get() async {
    _teams = (await Api().getTeams()) ?? [];
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Times de Futebol'),
      ),
      body: Center(
          child: _teams == null
              ? const CircularProgressIndicator()
              : CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200.0,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 4.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black54,
                              ),
                              child: Text(_teams![index].name),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsTeams(teams: _teams![index])),
                                );
                              },
                            ),
                          );
                        },
                        childCount: 20,
                      ),
                    ),
                  ],
                )),
    );
  }
}
