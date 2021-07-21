import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hook_up_rent/widgets/common_image.dart';

const List<String> imageModel = [
  // 'http://tepia-skgj-yxjg.oss-cn-beijing.aliyuncs.com/PC/signature/2021-07/20/dd7fdfb2-4ff8-4151-8-/1-210720100154923.jpg',
  // 'http://tepia-skgj-yxjg.oss-cn-beijing.aliyuncs.com/PC/signature/2021-07/20/dd7fdfb2-4ff8-4151-8-/4-210720100154744.jpg',
  // 'http://tepia-skgj-yxjg.oss-cn-beijing.aliyuncs.com/PC/signature/2021-07/20/dd7fdfb2-4ff8-4151-8-/3-210720100154743.jpg',
  // 'http://tepia-skgj-yxjg.oss-cn-beijing.aliyuncs.com/PC/signature/2021-07/20/dd7fdfb2-4ff8-4151-8-/2-210720100154838.jpg',
];

var imageWidth = 1600;
var imageHeight = 1000;

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({Key key, this.images = imageModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imageWidth * imageHeight;
    return Container(
      height: height,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: SwiperPagination(),
        // control: SwiperControl(),
      ),
    );
  }
}
