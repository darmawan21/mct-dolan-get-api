import 'package:flutter/material.dart';
import 'package:mct_dolan/common/color.dart';
import 'package:mct_dolan/common/style.dart';
import 'package:mct_dolan/data/models/checkItems_model.dart';
import 'package:mct_dolan/data/models/checklist_model.dart';
import 'package:mct_dolan/data/models/label_model.dart';
import 'package:mct_dolan/providers/data_provider.dart';
import 'package:mct_dolan/widget/custom_checkitem.dart';
import 'package:mct_dolan/widget/custom_checklists.dart';
import 'package:mct_dolan/widget/custom_labels.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    final dataModel = Provider.of<DataProvider>(context, listen: false);
    dataModel.getData();
  }

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataProvider>(context);
    print(dataModel.data?.name);
    int? listCheckList = dataModel.data?.checklists?.length;
    final lcl = dataModel.data?.checklists;

    print(lcl);
    var listCL = listCheckList?.toInt() ?? 0;
    for (var i = 0; i < listCL; i++) {
      print(dataModel.data?.checklists?[i].name);
      var hasilCheckList = dataModel.data?.checklists?[i].name;
      int? listCheckItem = dataModel.data?.checklists?[i].checkItems?.length;
      var listCI = listCheckItem?.toInt() ?? 0;
      for (var j = 0; j < listCI; j++) {
        print(dataModel.data?.checklists?[i].checkItems?[j].name);
        var hasilCheckItem = dataModel.data?.checklists?[i].checkItems?[j].name;
      }
    }
    // print(listCheckItem.toString().length);
    // for (var i = 0; i < 9; i++) {
    //   print(dataModel.data?.checklists?[i].name);
    //   int? listCheckItem = dataModel.data?.checklists?[6].checkItems?.length;
    //   print(listCheckItem);
    // }

    // List<Widget> mywidgets = list.map((e) {
    //   return Container(
    //     child: Text(e.name.toString()),
    //   );
    // }).toList();

    // print(mywidgets);

    return Consumer<DataProvider>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: whiteColor,
          body: SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: 24,
                ),
                // NOTE: Judul
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    dataModel.data?.name ?? "",
                    style: purpleColorTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    'in list June 2021',
                    style: greyextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE: Labels
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    'Labels',
                    style: purpleColorTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      LabelCard(
                        LabelModel(
                          id: dataModel.data?.labels?[0].id ?? "",
                          idBoard: dataModel.data?.labels?[0].idBoard ?? "",
                          name: dataModel.data?.labels?[0].name ?? "",
                          color: dataModel.data?.labels?[0].color ?? "",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      LabelCard(
                        LabelModel(
                          id: dataModel.data?.labels?[1].id ?? "",
                          idBoard: dataModel.data?.labels?[1].idBoard ?? "",
                          name: dataModel.data?.labels?[1].name ?? "",
                          color: dataModel.data?.labels?[1].color ?? "",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      LabelCard(
                        LabelModel(
                          id: dataModel.data?.labels?[2].id ?? "",
                          idBoard: dataModel.data?.labels?[2].idBoard ?? "",
                          name: dataModel.data?.labels?[2].name ?? "",
                          color: dataModel.data?.labels?[2].color ?? "",
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE: Description
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    'Description',
                    style: purpleColorTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    dataModel.data?.desc ?? "",
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                // NOTE: Attachments
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    'Attachments',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE: Checklist
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    'Checklist',
                    style: regularTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                CheckListCard(
                  ChecklistModel(
                    id: dataModel.data?.checklists?[0].id ?? "",
                    idBoard: dataModel.data?.checklists?[0].IdBoard ?? "",
                    name: dataModel.data?.checklists?[0].name ?? "",
                  ),
                ),
                Column(
                  children: [
                    CheckItemCard(),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      dataModel.data?.checklists?[0].name ?? "",
                    ),
                    Text(
                      dataModel.data?.checklists?[1].name ?? "",
                    ),
                    Text(
                      dataModel.data?.checklists?[2].name ?? "",
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                      for (int i=0; i< listCL; i++)
                        Text(
                          dataModel.data?.checklists?[i].name ?? "",
                        ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
