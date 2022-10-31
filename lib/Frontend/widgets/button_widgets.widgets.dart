import 'package:ecommerce_store/Frontend/utils/const/const.dart';

Widget customButton(
    {required VoidCallback onPress,
    required Color color,
    textColor,
    required String title}) {
  return SizedBox(
    width: double.maxFinite,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 1,
        padding: const EdgeInsets.all(16),
      ),
      onPressed: onPress,
      child: title.text.white.bold.make(),
    ),
  );
}
