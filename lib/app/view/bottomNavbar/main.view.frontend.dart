import 'package:ecommerce_store/app/controllers/homeController/home_controller.controllers.frontend.dart';
import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/view/account/account_screen.view.frontend.dart';
import 'package:ecommerce_store/app/view/cart/cart_screen.view.frontend.dart';
import 'package:ecommerce_store/app/view/category/category_screen.view.frontend.dart';
import 'package:ecommerce_store/app/view/home/home_screen.view.frontend.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //initialize homeController

    var homeController = Get.put(HomeController());

    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const AccountScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(homeController.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: homeController.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navBarItems,
          onTap: (value) {
            homeController.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
