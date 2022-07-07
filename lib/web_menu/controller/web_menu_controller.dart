import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems => ['Home', 'Services', 'About Me', 'Projects'];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
