// import 'package:flutter/material.dart';
// import 'package:flutter_advanced_networkimage/provider.dart';

// final networkUrlReg = RegExp('^http'); //网络图片
// final localUrlReg = RegExp('^static'); //本地图片

// class CommonImage extends StatelessWidget {
//   final String src;
//   final double width;
//   final double height;
//   final BoxFit fit;

//   const CommonImage(this.src, {Key key, this.width, this.height, this.fit})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (networkUrlReg.hasMatch(src)) {
//       return Image(
//         width: width,
//         height: height,
//         fit: fit,
//         image: AdvancedNetworkImage(
//           src,
//           useDiskCache: true,
//           cacheRule: CacheRule(maxAge: Duration(days: 7)),
//         ),
//       );
//     }
//     if (localUrlReg.hasMatch(src)) {
//       return Image.asset(
//         src,
//         width: width,
//         height: height,
//         fit: fit,
//       );
//     }
//     assert(false, '图片地址 src 不合法');
//     return Container();
//   }
// }
