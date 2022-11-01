import 'package:ecommerce_store/app/utils/const/const.dart';
import 'package:ecommerce_store/app/view/category/productDetails/product_details_screen.category.view.frontend.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({Key? key, required this.categoryName})
      : super(key: key);
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: categoryName.text.bold.white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //menu section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => "Baby Clothing"
                      .text
                      .semiBold
                      .size(13)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .size(130, 70)
                      .outerShadowSm
                      .margin(const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10))
                      .make(),
                ),
              ),
            ),
            40.heightBox,
            //items Container
            Expanded(
              child: GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        "4GB RAM /500 GB Storage"
                            .text
                            .semiBold
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "RS.1,20,000".text.color(redColor).size(16).make(),
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .outerShadowSm
                        .padding(const EdgeInsets.all(12))
                        .make()
                        .onTap(
                          () => Get.to(
                            () => ProductDetailsScreen(),
                          ),
                        );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
