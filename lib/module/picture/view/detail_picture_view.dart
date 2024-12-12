import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';

class DetailPictureView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller = Get.put(DetailPictureController());
    return Scaffold(
      appBar: AppBar(title: Text("Detail Photo"),
      ),
      body: Obx(
          (){
            if(controller.pictureDetail.isEmpty) {
              return Center(child: LoadingWidget());
            }
            if(controller.isLoading.value){
              return Center(child: LoadingWidget());
            }

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DetailContentWidget(
                      imageUrl: controller.pictureDetail['download_url'],
                      author: controller.pictureDetail['author'])
                ],
              ),
            );
          }
      ),
    );
  }
}
