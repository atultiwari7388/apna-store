import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/utils/const/list.dart';
import 'package:ecommerce_store/app/view/auth/Signup/signup.auth.view.frontend.dart';
import 'package:ecommerce_store/app/view/bottomNavbar/main.view.frontend.dart';
import 'package:ecommerce_store/app/widgets/custom_text_field.widgets.dart';
import '../../../widgets/app_logo.widgets.dart';
import '../../../widgets/button_widgets.widgets.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({Key? key}) : super(key: key);

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
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
              "Login to $appName".text.white.bold.size(18).make(),
              18.heightBox,
              Column(
                children: [
                  customTextField(
                    text: "Email",
                    hintText: "email@gmail.com",
                    controller: emailController,
                    isPassShow: false,
                  ),
                  10.heightBox,
                  customTextField(
                    text: "Password",
                    hintText: "*******",
                    controller: passController,
                    isPassShow: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.make(),
                    ),
                  ),
                  5.heightBox,
                  customButton(
                      onPress: () => Get.to(() => const MainScreen()),
                      title: login,
                      color: redColor),
                  10.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  10.heightBox,
                  customButton(
                      onPress: () {
                        Get.to(() => const SignupAuthScreen());
                      },
                      title: signUp,
                      color: golden),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          socialIconsList[index],
                          width: 30,
                        ),
                      ).paddingAll(8.0),
                    ),
                  ),
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
