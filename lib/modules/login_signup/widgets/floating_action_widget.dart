import 'package:books/modules/login_signup/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        backgroundColor: Colors.black,
        onPressed: () {},
        child: IconWidget(icon:Icons.arrow_forward, iconColor: Colors.white,));
  }
}
