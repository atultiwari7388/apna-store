import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_store/app/controllers/ProfileController/profilec_controller.controllers.app.dart';
import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/widgets/button_widgets.widgets.dart';
import 'package:ecommerce_store/app/widgets/custom_text_field.widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileController = Get.find<ProfileController>();

    return Scaffold(
      appBar: AppBar(
        title: "Edit Profile ".text.make(),
      ),
      body: SafeArea(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              profileController.profileImgPath.isEmpty
                  ? Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2Fb0%2Fe1%2F12%2Fb0e112fc0215a0a4c7315c8684cd4231.jpg&f=1&nofb=1&ipt=96ed4228d8984ba75ab4881671656ee96f2c2c016ae394a7e49d410d26191bec&ipo=images",
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make()
                  : Image.file(
                      File(profileController.profileImgPath.value),
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.heightBox,
              TextButton(
                  onPressed: () {
                    //find profile controller
                    profileController.uploadImage(context);
                  },
                  child: "Upload Image".text.make()),
              const Divider(),
              20.heightBox,
              customTextField(
                hintText: nameHint,
                text: name,
                isPassShow: false,
              ),
              customTextField(
                hintText: emailHint,
                text: email,
                isPassShow: false,
              ),
              30.heightBox,
              customButton(onPress: () {}, color: redColor, title: "Update")
            ],
          )
              .box
              .outerShadow
              .white
              .padding(const EdgeInsets.all(16))
              .margin(const EdgeInsets.only(top: 50, left: 12, right: 12))
              .rounded
              .make(),
        ),
      ),
    );
  }
}
