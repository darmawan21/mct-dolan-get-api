import 'package:flutter/material.dart';
import 'package:mct_dolan/common/style.dart';
import 'package:mct_dolan/data/models/checklist_model.dart';
import 'package:mct_dolan/data/models/mct_model.dart';
import 'package:mct_dolan/providers/data_provider.dart';
import 'package:mct_dolan/providers/mct_provider.dart';
import 'package:mct_dolan/widget/custom_data.dart';
import 'package:mct_dolan/widget/custom_mct.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  // const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    // Provider.of<DataProvider>(context, listen: false).getDatas();
    final dataModel = Provider.of<DataProvider>(context, listen: false);
    dataModel.getData();
  }

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataProvider>(context);
    print('hello');
    List<ChecklistModel>? list = [];

    
    print(list?.length);
    // for (var i = 0; i <= list.toString().length; i++) {
    //   print(list?[i].name);
    // }

    List<Widget>? mywidgets = list?.map((e) {
      // print(list[0].name);
      // for (var i = 0; i < list.length; i++) {
      //   // print(list[i].name);
      //   // var checkList = list[i].name;
      //   mywidgets.add(Container(
      //     child: Text(list[i].name.toString()),
      //   ));
      // }
      return Container(
        child: Text(e.name.toString()),
      );
    }).toList();

    print('hanma');

    return Consumer<DataProvider>(
      builder: (context, dataProvider, child) {
        return Scaffold(
          body: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataModel.data?.name ?? "",
                            style: purpleColorTextStyle.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children: [
                              // Text(
                              //   dataModel.data?.labels?[0].name ?? "",
                              // ),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              // Text(
                              //   dataModel.data?.labels?[1].name ?? "",
                              // ),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              // Text(
                              //   dataModel.data?.labels?[2].name ?? "",
                              // ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          // Description
                          Text(
                            'Description',
                            style: purpleColorTextStyle.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            dataModel.data?.desc ?? "",
                            style: purpleColorTextStyle,
                          ),
                          // for (var i = 0; i < list?.length; i++) ...[
                          //   Container(
                          //     child: Text('hello'),
                          //   ),
                          // ],
                          Column(
                            children: mywidgets!,
                          ),
                          Column(
                            
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
