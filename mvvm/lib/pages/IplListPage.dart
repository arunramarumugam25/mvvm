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
    Provider.of<IplListViewModel>(context, listen: false).fetchIpl("csk");
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
        child: Ipllist(ipl:vm.ipl)
      )
   
    );
  }
}
