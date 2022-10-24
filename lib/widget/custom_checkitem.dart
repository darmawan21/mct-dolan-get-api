import 'package:flutter/material.dart';
import 'package:mct_dolan/services/data_service.dart';

class CheckItemCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getSinglePostData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // print(snapshot.data?.checklists);
          var list = snapshot.data as Map<String, dynamic>;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.all(8),
                title: Text(list[index]['name']),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
