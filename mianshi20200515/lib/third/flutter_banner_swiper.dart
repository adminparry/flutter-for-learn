import 'package:flutter/material.dart';
import 'package:flutter_banner_swiper/flutter_banner_swiper.dart';

class MyBanner extends StatelessWidget {

  final List<String> bannerList;
//   [
//    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=379465721,135214342&fm=26&gp=0.jpg',
//    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1450206466,2154322493&fm=26&gp=0.jpg',
//    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3930382388,370694949&fm=11&gp=0.jpg'
//  ];
//
  final Function onTap;


  MyBanner({this.bannerList, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BannerSwiper(
      spaceMode: false,
      //width  和 height 是图片的高宽比  不用传具体的高宽   必传
      height: 108,
      width: 54,
      //轮播图数目 必传
      length: bannerList.length,

      //轮播的item  widget 必传
      getwidget: (index) {
        return new GestureDetector(
            child:  Image.network(bannerList[index % bannerList.length],fit: BoxFit.cover,),
            onTap: () => onTap(index));
      },
    );
  }
}