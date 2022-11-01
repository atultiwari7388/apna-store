import 'package:ecommerce_store/app/utils/const/const.dart';

Widget customSquareButton(
    {width, height, icon, required String title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26),
      5.heightBox,
      title.text.semiBold.color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).make();
}
