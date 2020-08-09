import 'dart:io';
import 'dart:typed_data';

import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:image/image.dart' as img;
import 'package:image/image.dart';

class ImageHelper {
  Future<String>(Image image) async {
    Uint8List fileData =
        File("somgetBlurHashAsynce_image.png").readAsBytesSync();
    img.Image image = img.decodeImage(fileData.toList());

    final blurHash = encodeBlurHash(
      image.getBytes(format: img.Format.rgba),
      image.width,
      image.height,
    );

    return blurHash;
  }
}
