import 'package:flutter/material.dart';
import 'package:mct_dolan/common/style.dart';
import 'package:mct_dolan/data/models/checklist_model.dart';

class CheckListCard extends StatelessWidget {
  final ChecklistModel checkitemModal;
  CheckListCard(this.checkitemModal);
  bool? isChecked;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'app',
              style: purpleColorTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Column(
            children: [
              Checkbox(
                value: isChecked,
                activeColor: Colors.blue,
                onChanged: (value) {
                  isChecked;
                },
                // onChanged: (newValue) {},
                // title: Text("title"),
                // controlAffinity: ListTileControlAffinity.leading,
                // contentPadding: EdgeInsets.only(left: 24),
              ),
            ],
          )
        ],
      ),
    );
  }
}
