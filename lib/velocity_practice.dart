import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class VelocityPracticeScreen extends StatelessWidget {
  const VelocityPracticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //creating a box
            40.heightBox,
            "Hello"
                .text
                .white
                .center
                .size(30)
                .makeCentered()
                .box
                .alignCenter
                .padding(const EdgeInsets.all(20))
                .size(200, 200)
                .color(Colors.red)
                .roundedSM
                .amber500
                .make()
                .onTap(() {
              print("Velocity Box");
              VxToast.show(context, msg: "Hello There");
            }),
          ],
        ),
      ),
    );
  }
}
