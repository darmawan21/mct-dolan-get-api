import 'package:flutter/material.dart';
import 'package:mct_dolan/data/models/mct_model.dart';

class CustomMct extends StatelessWidget {
  final MctModel mct;
  CustomMct(this.mct);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Text(
              'skfjse',
            ),
          ],
        )
      ],
    );
  }
}
