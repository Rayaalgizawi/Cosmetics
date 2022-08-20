import 'package:banner_carousel/banner_carousel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialsBannerHomePage extends StatelessWidget {
  TutorialsBannerHomePage({Key? key}) : super(key: key);

  final CollectionReference ads = FirebaseFirestore.instance.collection('adds');

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: ads.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            final DocumentSnapshot documentSnapshot =
                streamSnapshot.data!.docs[0];
            return BannerCarousel(
              customizedBanners: [
                bannerBox(documentSnapshot['imageurl'],
                    documentSnapshot['redirecturl']),
              ],
              activeColor: const Color(0xff034061),
            );
          } else {
            return Container();
          }
        });
  }

  Widget bannerBox(String url, String urlToOpen) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          _launchURL(urlToOpen);
        },
        child: Image.network(
          url,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
