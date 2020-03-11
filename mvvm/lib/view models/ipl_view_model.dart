import 'package:mvvm/models/ipl.dart';

class IplViewModel {

  final Ipl ipl; 

  IplViewModel({this.ipl});

  String get name {
    return this.ipl.name; 
  }

  String get team {
    return this.ipl.team; 
  }

}