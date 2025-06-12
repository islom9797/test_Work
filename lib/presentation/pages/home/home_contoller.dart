import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomePageController extends GetxController {

  String size="";
  File? file;
  bool isLoading = false;



  Future<void> pickFile() async {
    changeLoading();
    FilePickerResult? result = await FilePicker.platform.pickFiles(   type: FileType.custom,allowedExtensions: ['jpg', 'pdf', 'png'],);

    await Future.delayed(Duration(seconds: 2));
    if (result != null) {
      checkFileSize(result!.files.single.path!);
      file=File(result!.files.single.path!);
    }
    if (result == null) {
      Get.showSnackbar(
        GetSnackBar(title: "Xatolik", message: "Rasm Yuklanmadi"),
      );
    }
    changeLoading();
  }

  Future<bool> checkFileSize(String path) async {
    final file = File(path);
    final bytes = await file.length();
    final double sizeInMb = bytes / (1024 * 1024);


    print('double $double');
    if (sizeInMb > 10) {
      Get.snackbar(
        "Error",
        "Rasm hajmi 10MB dan oshmasligi kerak!",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    size="${sizeInMb.toStringAsFixed(4)}";
    return true;
  }

  void changeLoading() {
    isLoading = !isLoading;
    update();
  }
}
