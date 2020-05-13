
import 'package:flutter/material.dart';

import 'myscenemodel.dart';

class TestSceneListView extends StatelessWidget {
  const TestSceneListView(
      { //Key key,
        this.sceneData,
//        this.animationController,
//        this.animation,
        this.callback});
      //: super(key: key);

  final VoidCallback callback;
  final SceneList sceneData;



//  final AnimationController animationController;
//  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
        return Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5, right: 10, top: 1, bottom: 1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.6),
                    //     offset: const Offset(4, 4),
                    //     blurRadius: 16,
                    //   ),
                    // ],
                  ),

                  child: new Row(
                    children: <Widget>[
                        Container(
                          child: Image.asset(
                            sceneData.barcodeImgPath,
                            //fit: BoxFit.cover,
                            height: 70,
                            width: 70,
                          ),       
                        ),
                        Expanded(
                        child: Container(
                          child: Column(
                          children: <Widget>[
                            Text(
                                  sceneData.sceneName,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                            ),
                            Text(
                                  sceneData.sceneDescription,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 22,
                                  ),
                            ),                            
                          ],
                          ),
                        ),
                        ),
                        Container(
                          child: Row(children: <Widget>[
                              Icon(
                                Icons.ac_unit,
                                size: 12,
                                color: Colors.blue,
                              ),
                               Text(
                                  
                                  sceneData.sceneContactPerson,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                          ],
                          ),
                        ),
                    ],
                  ),


                  // child: ClipRRect(
                  //   borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  //   child: Stack(
                  //     children: <Widget>[
                  //       Column(
                  //         children: <Widget>[
                  //           //AspectRatio(
                  //           //  aspectRatio: 2,
                  //           //  child: Image.asset(
                  //             Image.asset(
                                            
                  //               sceneData.barcodeImgPath,
                  //               //fit: BoxFit.cover,
                  //               height: 100,
                  //               width: 100,
                  //             ),            
                  //         ],
                  //       ),
                  //       Column(
                  //         children: <Widget>[
                  //           //AspectRatio(
                  //           //  aspectRatio: 2,
                  //           //  child: Image.asset(
                  //             Image.asset(
                                            
                  //               sceneData.barcodeImgPath,
                  //               //fit: BoxFit.cover,
                  //               height: 100,
                  //               width: 100,
                  //             ),            
                  //         ],
                  //       ), 
                  //     ],
                  //   ),
                  ),
                ),
            
          );
  }
}
