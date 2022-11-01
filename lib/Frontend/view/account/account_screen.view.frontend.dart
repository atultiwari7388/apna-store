import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'package:ecommerce_store/Frontend/utils/const/list.dart';
import 'package:ecommerce_store/Frontend/view/account/component/profile_details_component.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgBackground), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                //edit profile button
                Align(
                    alignment: Alignment.topRight,
                    child: const Icon(Icons.edit, color: Colors.white)
                        .onTap(() {})),
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
                      onPressed: () {},
                      child: "logout".text.white.semiBold.make(),
                    )
                  ],
                ),
                20.heightBox,
                //card section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileDetailsComponent(
                      width: context.screenWidth / 3.4,
                      count: "00",
                      title: "In your cart",
                    ),
                    profileDetailsComponent(
                      width: context.screenWidth / 3.4,
                      count: "32",
                      title: "In your Wishlist",
                    ),
                    profileDetailsComponent(
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
