import 'package:flutter/material.dart';
import 'package:mvvm/view%20models/ipl_list_view-model.dart';
import 'package:mvvm/widget/Ipl_list.dart';

import 'package:provider/provider.dart';

class IplListPage extends StatefulWidget {
  @override 
  _IplListPageState createState() => _IplListPageState(); 
}

class _IplListPageState extends State<IplListPage> {

  final TextEditingController _controller = TextEditingController(); 

  @override
  void initState() {
    super.initState();
    // you can uncomment this to get all batman movies when the page is loaded
    //Provider.of<MovieListViewModel>(context, listen: false).fetchMovies("batman");
  }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<IplListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Ipl")
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey, 
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              controller: _controller,
              onSubmitted: (value) {
                if(value.isNotEmpty) {
                  vm.fetchIpl(value);
                  _controller.clear();
                }
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "news", 
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none
              ),

            ),
          ), 
          Expanded(
            child: IplList(ipl: vm.ipl))
        ])
      )
   
    );
  }
}