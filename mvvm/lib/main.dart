import 'package:flutter/material.dart';
import 'package:mvvm/pages/IplListPage.dart';
import 'package:provider/provider.dart';

import 'view models/ipl_list_view-model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return MaterialApp(
       title: "ipl",
       home: ChangeNotifierProvider(create:(context) =>IplListViewModel(),
       child: IplListPage(),
       )
       
     );
  }
}