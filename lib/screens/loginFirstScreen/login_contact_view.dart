import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../shared_widget.dart/custom_text.dart';
import 'loginFirstScreen_bloc.dart';

class ContactView extends StatelessWidget {
  final LoginFirstScreenBloc bloc;
  const ContactView({
    required this.bloc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder(
          stream: bloc.productsCollection.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              bloc.fillproductsContactList(streamSnapshot.data!.docs);

              if (streamSnapshot.data!.docs.isNotEmpty) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var bottomPadding =
                        index == streamSnapshot.data!.docs.length - 1 ? 25 : 0;
                    return Padding(
                      padding:
                          EdgeInsets.only(bottom: bottomPadding.toDouble()),
                      child: SizedBox(
                        height: 90,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 45,
                                child: Image.network(
                                  bloc.productsContactList[index].URL,
                                  scale: 4,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomText(
                                    title: bloc.productsContactList[index].name,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontColor: const Color(0xff444444),
                                  ),
                                  CustomText(
                                    title:
                                        bloc.productsContactList[index].price,
                                    fontSize: 16,
                                    fontColor: const Color(0xff444444),
                                  ),
                                  CustomText(
                                    title: bloc.productsContactList[index].id,
                                    fontSize: 14,
                                    fontColor: const Color(0xff444444),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CustomText(
                    title: "No trip photos found",
                    fontSize: 20,
                    fontColor: Colors.black,
                  ),
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
