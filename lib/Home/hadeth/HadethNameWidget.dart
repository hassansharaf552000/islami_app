import 'package:flutter/material.dart';
import 'HadethDetailsScreen.dart';
import 'HadethTab.dart';

class HadethNameWidget extends StatelessWidget {
  HadethItem item;

  HadethNameWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          item.title,
          style: Theme.of(context).primaryTextTheme.headline2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
