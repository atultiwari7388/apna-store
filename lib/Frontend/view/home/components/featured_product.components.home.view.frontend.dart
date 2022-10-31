import 'package:ecommerce_store/Frontend/utils/const/const.dart';

Widget featuredBoxesProduct({required String title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.cover),
      10.widthBox,
      title.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .width(200)
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .white
      .padding(const EdgeInsets.all(8.0))
      .roundedSM
      .outerShadowSm
      .make();
}
