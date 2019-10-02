import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import './fill_account.dart';

abstract class FillAccountViewModel extends State<FillAccount> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberphoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  Map deviceInfoState = Map();
  bool terms = false;
  File image;

  Future getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    setState(() {
      deviceInfoState = {
        "version": {
          "baseOS": androidInfo.version.baseOS,
          "codename": androidInfo.version.codename,
          "incremental": androidInfo.version.incremental,
          "previewSdkInt": androidInfo.version.previewSdkInt,
          "release": androidInfo.version.release,
          "sdkInt": androidInfo.version.sdkInt,
          "securityPatch": androidInfo.version.securityPatch,
        },
        "bootloader": androidInfo.bootloader,
        "brand": androidInfo.brand,
        "device": androidInfo.device,
        "display": androidInfo.display,
        "fingerprint": androidInfo.fingerprint,
        "hardware": androidInfo.hardware,
        "host": androidInfo.host,
        "id": androidInfo.id,
        "manufacturer": androidInfo.manufacturer,
        "model": androidInfo.model,
        "product": androidInfo.product,
        "supported32BitAbis": androidInfo.supported32BitAbis,
        "supported64BitAbis": androidInfo.supported64BitAbis,
        "supportedAbis": androidInfo.supportedAbis,
        "tags": androidInfo.tags,
        "type": androidInfo.type,
        "isPhysicalDevice": androidInfo.isPhysicalDevice,
        "isPhysicalDevice": androidInfo.androidId,
      };
    });
  }

  Future getImage(int type) async {
    var _image = await ImagePicker.pickImage(
        source: type == 0 ? ImageSource.gallery : ImageSource.camera);

    setState(() {
      image = _image;
    });
  }

  Future<Null> cropImage() async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      // ratioX: 1.0,
      // ratioY: 1.0,
      maxWidth: 512,
      maxHeight: 512,
    );

    setState(() {
      image = croppedFile;
    });
  }

  // Future<String> pickSaveImage() async {
  // try {
  //   String imageFile = path.basename(image.path);
  //   // StorageReference ref =
  //   //     FirebaseStorage.instance.ref().child("avatar").child(imageFile);
  //   // StorageUploadTask uploadTask = ref.putFile(image);
  //   return await (await uploadTask.onComplete).ref.getDownloadURL();
  // } catch (e) {
  //   print(e);
  //   return "";
  // }
  // }

  @override
  void initState() {
    getDeviceInfo();
    super.initState();
  }
}
