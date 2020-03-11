import 'package:flutter/material.dart';
import 'package:mvvm/view%20models/ipl_view_model.dart';


class IplList extends StatelessWidget {

  final List<IplViewModel> ipl; 

  IplList({this.ipl});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.ipl.length,
      itemBuilder: (context, index) {
        
        final movie = this.ipl[index];

        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(movie.team)
              ),
              borderRadius: BorderRadius.circular(6)
            ),
            width: 50, 
            height: 100,
            ),
          title: Text(movie.name),
        );
      },
    );
  }
}