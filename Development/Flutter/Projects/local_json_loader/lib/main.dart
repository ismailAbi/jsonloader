import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json loader app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Json Loader App'),
        ),
        // body: Container(
        //   child: FutureBuilder(
        //     future: DefaultAssetBundle.of(context)
        //         .loadString('json_loader/jsonData.json'),
        //     builder: (context, snapshot) {
        //       String data = snapshot.data.toString();
        //       var mydata = jsonDecode(data);
        //       return ListView.builder(
        //           itemCount: mydata == null ? 0 : mydata.length,
        //           itemBuilder: (BuildContext context, int index) {
        //             return Card(
        //               child: Column(
        //                 children: [
        //                   Text('Name' + mydata[index]['name']),
        //                   Text('Name' + mydata[index]['gender']),
        //                   Text('Name' + mydata[index]['age']),
        //                 ],
        //               ),
        //             );
        //           });
        //     },
        //   ),
        // ),
        body: Container(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('json_loader/jsonData.json'),
            builder: (context, snapshot) {
              var myData = jsonDecode(snapshot.data.toString());
              return ListView.builder(
                  itemCount: myData == null ? 0 : myData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(myData[index]['name']),
                        Text(myData[index]['age']),
                        Text(myData[index]['gender']),
                        Text(myData[index]['hair_color']),
                      ],
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
