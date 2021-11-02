import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/list_widget.dart';
import 'package:provider/provider.dart';
import '../provider/data.dart';

class List extends StatefulWidget {
  ListState createState() => ListState();
}

class ListState extends State<List> {
  var _isLoading = false;

//  @override
//  void didChangeDependencies() {
//    // TODO: implement didChangeDependencies
//
//    super.didChangeDependencies();
//  }

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProfileProvider>(context, listen: false).fetchData()
        .then((value) {
      setState(() {
        _isLoading = !_isLoading;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProfileProvider>(context).data;
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Center(
              child: Text(
                "UserList",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            ),
          ),
          Expanded(
            child: _isLoading ? Center(
              child: CircularProgressIndicator(),
            ) : provider.length == 0 ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("No Data To Display"),
                ],
              ),
            ) : ListView.builder(
              itemBuilder: (context, index) => ListWidget(
                provider[index]!.userName,
                provider[index]!.name,
                provider[index]!.emailId,
                provider[index]!.timePeriod,
                provider[index]!.age,
                provider[index]!.nationality,
                provider[index]!.number,
                provider[index]!.streetNumber,
                provider[index]!.streetName,
                provider[index]!.city,
                provider[index]!.country,
//                provider[index]!.postCode,
                provider[index]!.picture
              ),
              itemCount: provider.length
            ),
          )
        ],
      ),
    );
  }
}