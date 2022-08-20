import 'package:beauty_pariour2/models/categories.dart';
import 'package:beauty_pariour2/shared_widget.dart/custom_text.dart';
import 'package:flutter/material.dart';
class HomeCategoryView extends StatelessWidget {
List <Categories> listofcategoriesr;
   HomeCategoryView({required this.listofcategoriesr,Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listofcategoriesr.length ~/ 2,
          itemBuilder: (cotext, index) {
            return Column(
              children: [
                _categoryIcon(listofcategoriesr[index]),
                _categoryIcon(      listofcategoriesr   [index + 6]),
              ],
            );
          }),
    );
    }

Widget   _categoryIcon(Categories item ){
  return  Padding(
    padding:   EdgeInsets.all(8.0),
    child: SizedBox(
      width: 80,height: 80,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
                      height: 55,width: 55,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: SizedBox(
                          child: Image.network(item.image,fit: BoxFit.cover,),),)),
          ),
          
        CustomText(
          title: item.name,
           fontSize:14,
        fontColor: Colors.black,)],),),
  );

}



  }

