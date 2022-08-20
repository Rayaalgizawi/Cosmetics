import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class Homebannerview extends StatelessWidget {
  const Homebannerview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: BannerCarousel(
       activeColor: const Color(0xffeb77ae),
        customizedBanners: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.network(
              "https://image.freepik.com/free-vector/lipstick-sets-banner_1268-11221.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.network(
              "https://i.pinimg.com/originals/88/1a/94/881a94796c50de4775d47badb01c4308.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.network(
              "https://th.bing.com/th/id/OIP.EUm0ONlaBVhIBCk4XKW5QQHaCU?pid=ImgDet&rs=1",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.network(
              "https://4.bp.blogspot.com/-9o-WxgoYVY8/T5WgigGcIYI/AAAAAAAAFLU/_vORXEOSEf8/s1600/SPRING-1.jpg",
              fit: BoxFit.fill,
            ),
          ),  Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.network(
              "https://mir-s3-cdn-cf.behance.net/project_modules/1400/16e36a70810821.5bafdb65799e6.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
                 
  }
}