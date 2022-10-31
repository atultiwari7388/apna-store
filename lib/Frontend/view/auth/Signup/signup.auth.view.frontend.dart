import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'package:ecommerce_store/Frontend/widgets/custom_text_field.widgets.dart';
import 'package:get/get.dart';
import '../../../widgets/app_logo.widgets.dart';
import '../../../widgets/button_widgets.widgets.dart';

class SignupAuthScreen extends StatefulWidget {
  const SignupAuthScreen({Key? key}) : super(key: key);

  @override
  State<SignupAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<SignupAuthScreen> {
  //
  bool? isCheck = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgBackground), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Join the $appName".text.white.bold.size(18).make(),
              18.heightBox,
              Column(
                children: [
                  customTextField(
                    text: name,
                    hintText: nameHint,
                    controller: emailController,
                  ),
                  5.heightBox,
                  customTextField(
                    text: email,
                    hintText: emailHint,
                    controller: emailController,
                  ),
                  5.heightBox,
                  customTextField(
                    text: password,
                    hintText: passwordHint,
                    controller: passController,
                  ),
                  5.heightBox,
                  customTextField(
                    text: retypePass,
                    hintText: passwordHint,
                    controller: passController,
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Checkbox(
                        checkColor: whiteColor,
                        activeColor: redColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                      fontFamily: regular, color: fontGrey)),
                              TextSpan(
                                  text: termsConditions,
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                              TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                      fontFamily: regular, color: fontGrey)),
                              TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  customButton(
                      onPress: () {},
                      title: signUp,
                      color: isCheck == true ? redColor : fontGrey),
                  15.heightBox,
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAnAccount,
                          style: TextStyle(fontFamily: bold, color: fontGrey),
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(fontFamily: bold, color: redColor),
                        ),
                      ],
                    ),
                  ).onTap(() => Get.back()),
                  10.heightBox,
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
