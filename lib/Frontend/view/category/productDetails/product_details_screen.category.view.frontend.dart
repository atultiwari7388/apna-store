import 'package:ecommerce_store/Frontend/utils/const/const.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key, this.title = "Product Title"})
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 1,
        title: title.text.make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
        ],
      ),
      body: Container(),
    );
  }
}
