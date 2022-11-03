import 'package:ecommerce_store/app/controllers/authController/auth_controller.controllers.dart';
import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/utils/const/list.dart';
import 'package:ecommerce_store/app/view/account/component/profile_details_component.dart';
import 'package:ecommerce_store/app/view/account/edit_screen.account.app.dart';
import 'package:ecommerce_store/app/view/auth/login/login.auth.view.frontend.dart';
import '../../controllers/ProfileController/profilec_controller.controllers.app.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileController = Get.put(ProfileController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgBackground), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                //edit profile button
                Align(
                  alignment: Alignment.topRight,
                  child: const Icon(Icons.edit, color: Colors.white).onTap(
                    () => Get.to(
                      () => const EditProfileScreen(),
                    ),
                  ),
                ),
                //top section
                Row(
                  children: [
                    Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2Fb0%2Fe1%2F12%2Fb0e112fc0215a0a4c7315c8684cd4231.jpg&f=1&nofb=1&ipt=96ed4228d8984ba75ab4881671656ee96f2c2c016ae394a7e49d410d26191bec&ipo=images",
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          "email@gmail.com"
                              .text
                              .fontFamily(semibold)
                              .white
                              .make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () async {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: "Are you sure, you want to logout "
                                    .text
                                    .make(),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      onPressed: () async {
                                        VxToast.show(context, msg: loggedOut);
                                        await Get.put(AuthController())
                                            .logoutMethod(context);
                                        Get.offAll(
                                            () => const LoginAuthScreen());
                                      },
                                      child: "Yes".text.make()),
                                  ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: "No".text.make(),
                                  )
                                ],
                              );
                            });
                      },
                      child: "logout".text.white.semiBold.make(),
                    )
                  ],
                ),
                20.heightBox,
                //card section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileDetailsCard(
                      width: context.screenWidth / 3.4,
                      count: "00",
                      title: "In your cart",
                    ),
                    profileDetailsCard(
                      width: context.screenWidth / 3.4,
                      count: "32",
                      title: "In your Wishlist",
                    ),
                    profileDetailsCard(
                      width: context.screenWidth / 3.4,
                      count: "125",
                      title: "your Orders",
                    ),
                  ],
                ),
                //profile button section
                40.heightBox,
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(color: lightGrey);
                  },
                  itemCount: profileButtonsList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: profileButtonsList[index]
                          .text
                          .semiBold
                          .color(darkFontGrey)
                          .make(),
                      leading:
                          Image.asset(profileButtonIcons[index], width: 22),
                    );
                  },
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.symmetric(horizontal: 16.0))
                    .outerShadow
                    .make()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
