import 'package:ecommerce_store/app/utils/const/const.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: "Cart is Empty".text.color(darkFontGrey).semiBold.makeCentered(),
    );
  }
}
