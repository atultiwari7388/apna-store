import 'package:ecommerce_store/Frontend/utils/const/const.dart';

Widget customTextField(
    {String? text = "yourEmail",
    String? hintText = "youremail@gmail.com",
    TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text!.text.color(redColor).semiBold.size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle:
              const TextStyle(fontFamily: semibold, color: textfieldGrey),
          hintText: hintText!,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: redColor)),
        ),
      ),
      5.heightBox
    ],
  );
}
