import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/const/const.dart';

class ProfileController extends GetxController {
  var profileImgPath = "".obs;

  uploadImage(BuildContext context) async {
    try {
      final img = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (img == null) return;
      profileImgPath.value = img.path;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        VxToast.show(context, msg: e.toString());
        print(e.toString());
      }
    }
  }
}
