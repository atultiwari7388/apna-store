import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'Frontend/view/splash/splassh_screen.view.frontend.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      theme: ThemeData(
        primaryColor: redColor,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
