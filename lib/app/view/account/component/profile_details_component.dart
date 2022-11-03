import 'package:ecommerce_store/app/utils/const/const.dart';

Widget profileDetailsCard(
    {required width, required String count, required String title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count.text.bold.size(16).color(darkFontGrey).make(),
      5.heightBox,
      title.text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .width(width)
      .height(80)
      .padding(const EdgeInsets.all(4))
      .make();
}
