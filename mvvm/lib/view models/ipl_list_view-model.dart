import 'package:flutter/material.dart';
import 'package:mvvm/services/webservices.dart';

import 'ipl_view_model.dart';


class IplListViewModel extends ChangeNotifier {

  List<IplViewModel> ipl = List<IplViewModel>(); 

  Future<void> fetchIpl(String keyword) async {
    final results =  await Webservice().fetchMovies(keyword);
    this.ipl = results.map((item) => IplViewModel(ipl: item)).toList();
    print(this.ipl);
    notifyListeners(); 
  }

}