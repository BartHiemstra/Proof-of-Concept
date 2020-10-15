import 'package:flutter/material.dart';

import 'theme.dart';
import 'package:proof_of_concept/model/job.dart';

class JobCard extends StatelessWidget {
  final Job job;

  JobCard(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(right: 20, left: 20, top: 80),
      child: Card(
        color: job.cardColor,
        elevation: 15.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(width: 5, color: job.cardColor)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: <Widget>[
              Image.asset(
                  job.image,
                  height: 350,
                  fit: BoxFit.cover),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 360, bottom: 10),
                  alignment: Alignment.bottomLeft,
                  child: Text(job.name, style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold, fontSize: 23.0))
              ),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 400, bottom: 10),
                  alignment: Alignment.bottomLeft,
                  child: Text(job.companyName, style: TextStyle(color: backgroundColor, fontWeight: FontWeight.normal, fontSize: 13.0))
              ),
            ],
          ),
        ),
      ),
    );
  }
}