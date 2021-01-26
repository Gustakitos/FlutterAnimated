import 'package:animations/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com a Udemy",
          image: AssetImage("images/tickicon.png"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com a Udemy",
          image: AssetImage("images/tickicon.png"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
