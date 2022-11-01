import 'package:ecommerce_store/Frontend/utils/const/const.dart';
import 'package:ecommerce_store/Frontend/utils/const/list.dart';
import 'package:ecommerce_store/Frontend/view/category/categoryDetail/category_details_screen.category.view.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: categories.text.bold.white.make(),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgBackground), fit: BoxFit.fill),
        ),
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: GridView.builder(
          itemCount: 9,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  categoryImages[index],
                  height: 120,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                10.heightBox,
                categoriesList[index]
                    .text
                    .color(darkFontGrey)
                    .align(TextAlign.center)
                    .make(),
              ],
            ).box.white.rounded.clip(Clip.antiAlias).make().onTap(
                  () => Get.to(
                    () => CategoryDetailsScreen(
                        categoryName: categoriesList[index]),
                  ),
                );
          },
        ),
      ),
    );
  }
}
