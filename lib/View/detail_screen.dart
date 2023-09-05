import 'package:covidapp/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      totalDeaths,
      totalRecoverd,
      active,
      critical,
      todayRecoverd,
      test;
  DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecoverd,
    required this.active,
    required this.critical,
    required this.todayRecoverd,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      ReuseableRow(
                          title: 'Cases', value: widget.totalCases.toString()),
                      ReuseableRow(
                          title: 'Recovered',
                          value: widget.totalRecoverd.toString()),
                      ReuseableRow(
                          title: 'Death', value: widget.totalDeaths.toString()),
                      ReuseableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ReuseableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecoverd.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          )
        ],
      ),
    );
  }
}
