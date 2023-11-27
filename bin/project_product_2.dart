import 'model/data_product.dart';
import 'service/network_service.dart';

void main() async {

  print("\x1B[32m\x1B[1mWelcome to Dart\x1B[0m\x1B[0m");

  String data = await NetworkService.getData(NetworkService.apiProduct);

  List listData = productListFromJson(data);

  for (int i = 0; i < listData.length; i++) {
    print("\n\x1B[34m\x1B[1mProduct ${i + 1}\x1B[0m\x1B[0m\n");
    print(listData[i].details.specs.screen.type);

    // print(listData[i]);
  }

}