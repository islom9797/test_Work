import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/config/extensions.dart';
import 'package:work/presentation/widgets/custom_button.dart';
import 'home_contoller.dart';

class HomePage extends StatefulWidget {
  static const String id = "/HomePage";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Container(),
        centerTitle: true,
      ),
      body: GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (controller) {
          return Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      CustomButton(onPressed: () async{
                        controller.pickFile();
                      }, text: "Pick File"),
                      Spacer(),
                    ],
                  ),


                  if (controller.file != null) ...[
                    30.ph,
                    Text("name:${controller.file!.path.split("/").last}",textAlign: TextAlign.start,),
                    Text("Path:${controller.file!.path}"),
                    Text("file size :${controller.size}mb"),
                    if(controller.file!.path.contains("jpg")||controller.file!.path.contains("png")||controller.file!.path.contains("jpeg"))...[
                      InteractiveViewer(
                        boundaryMargin: EdgeInsets.all(0.0),
                        // Optional: Margin around the content
                        minScale: 1.0,
                        // Optional: Minimum scale (zoom out)
                        maxScale: 3.0,
                        // Optional: Maximum scale (zoom in)
                        scaleEnabled: true,
                        // Optional: Allow scaling (zooming)
                        panEnabled: true,
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: Get.height*0.2,
                            maxHeight: Get.height*0.5,
                          ),
                          child: Image.file(File(controller.file!.path)),
                        ), // Optional: Allow panning (dragging)
                      )
                    ]
                  ],
                ],

              ),
              if (controller.isLoading) ...[
                Container(
                  color: Colors.black.withOpacity(0.2),
                  height: Get.height,
                  width: Get.width,
                  child: Center(child: CupertinoActivityIndicator()),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
