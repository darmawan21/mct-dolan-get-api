import 'package:flutter/material.dart';
import 'package:mct_dolan/common/color.dart';
import 'package:mct_dolan/common/style.dart';
import 'package:mct_dolan/data/models/label_model.dart';

class LabelCard extends StatelessWidget {
  final LabelModel label;

  LabelCard(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 120,
      color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            label.name.toString(),
            style: purpleColorTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
