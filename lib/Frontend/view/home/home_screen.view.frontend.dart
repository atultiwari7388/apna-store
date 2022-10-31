import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'package:ecommerce_store/Frontend/widgets/custom_square_button.widgets.dart';

import '../../utils/const/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      color: lightGrey,
      padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
      child: SafeArea(
        child: Column(
          children: [
            //search bar
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    //swiper banner
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: homeScreenBrandsSlider.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            homeScreenBrandsSlider[index],
                            fit: BoxFit.cover,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    //deal and flash section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2,
                        (index) => customSquareButton(
                          height: context.screenHeight * 0.16,
                          width: context.screenWidth / 2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todayDeal : flashSale,
                        ),
                      ),
                    ),
                    10.heightBox,
                    //2nd slider section
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: homeScreenBrandsSecondSlider.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            homeScreenBrandsSecondSlider[index],
                            fit: BoxFit.cover,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => customSquareButton(
                          height: context.screenHeight * 0.16,
                          width: context.screenWidth / 3.5,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCategories
                              : index == 1
                                  ? brand
                                  : topSellers,
                        ),
                      ),
                    ),
                    20.heightBox,
                    //feature categories

                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .semiBold
                          .make(),
                    ),

                    20.heightBox,

                    Row(
                      children: List.generate(3, (index) => Column()).toList(),
                    ),

                    100.heightBox
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
