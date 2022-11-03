import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/view/bottomNavbar/main.view.frontend.dart';
import 'package:ecommerce_store/app/widgets/app_logo.widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/login/login.auth.view.frontend.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //create a method
  changeScreen() {
    Future.delayed(const Duration(seconds: 10), () {
      //go to loginScreen
      // Get.to(() => const LoginAuthScreen());

      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          Get.to(() => const LoginAuthScreen());
        } else {
          Get.to(() => const MainScreen());
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appName.text.fontFamily(bold).size(22).black.make(),
            5.heightBox,
            appVersion.text.make(),
            const Spacer(),
            appCredits.text.extraBlack.semiBold.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
