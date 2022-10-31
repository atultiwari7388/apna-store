import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'package:ecommerce_store/Frontend/view/home/components/featured_product.components.home.view.frontend.dart';
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

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredBoxesProduct(
                                        icon: featuredImagesOne[index],
                                        title: featuredTitlesOne[index]),
                                    10.heightBox,
                                    featuredBoxesProduct(
                                        icon: featuredImagesTwo[index],
                                        title: featuredTitlesTwo[index]),
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    //feature products
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProducts.text.bold
                              .color(Colors.white)
                              .size(18)
                              .make(),
                          15.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                6,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "4GB RAM /500 GB Storage"
                                        .text
                                        .semiBold
                                        .color(darkFontGrey)
                                        .make(),
                                    10.heightBox,
                                    "RS.1,20,000"
                                        .text
                                        .color(redColor)
                                        .size(16)
                                        .make(),
                                  ],
                                )
                                    .box
                                    .white
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .roundedSM
                                    .padding(const EdgeInsets.all(8))
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.heightBox,
                    //third slider section
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
                    20.heightBox,
                    //all product section
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
