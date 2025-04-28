import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/link_api.dart';
import 'package:ecommerce/data/model/items_model.dart';
import 'package:flutter/material.dart';

class CustomListItems extends StatelessWidget {
  final ItemsModel itemsModel;

  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: "$linkImageItems/${itemsModel.itemsImage!}",
                height: 100,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 10),
              Text(
                itemsModel.itemsName!,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Rating 3.5 ", textAlign: TextAlign.center,style:TextStyle(fontFamily: "sans"),),
                  SizedBox(
                   // alignment: Alignment.bottomCenter,

                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(Icons.star, size: 14,color: AppColors.grey,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemsPrice} \$",
                    style: TextStyle(
                      color:  AppColors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans",
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: AppColors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
