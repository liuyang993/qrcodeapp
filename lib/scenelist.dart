
import 'package:flutter/material.dart';

import 'myscenemodel.dart';

class SceneListView extends StatelessWidget {
  const SceneListView(
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
                  left: 24, right: 24, top: 8, bottom: 16),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  callback();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            //AspectRatio(
                            //  aspectRatio: 2,
                            //  child: Image.asset(
                              Image.asset(
                                            
                                sceneData.barcodeImgPath,
                                //fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            //),
                            Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 8, bottom: 8),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              sceneData.sceneName,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22,
                                              ),
                                            ),
                                            // Row(
                                            //   crossAxisAlignment:
                                            //   CrossAxisAlignment.center,
                                            //   mainAxisAlignment:
                                            //   MainAxisAlignment.start,
                                            //   children: <Widget>[
                                            //     Text(
                                            //       sceneData.sceneDescription,
                                            //       style: TextStyle(
                                            //           fontSize: 14,
                                            //           color: Colors.grey
                                            //               .withOpacity(0.8)),
                                            //     ),
                                            //     const SizedBox(
                                            //       width: 4,
                                            //     ),
                                            //     Icon(
                                            //       Icons.ac_unit,
                                            //       size: 12,
                                            //       color: Colors.white,
                                            //     ),
                                            //     Expanded(
                                            //       child: Text(
                                            //         '${hotelData.dist.toStringAsFixed(1)} km to city',
                                            //         overflow:
                                            //         TextOverflow.ellipsis,
                                            //         style: TextStyle(
                                            //             fontSize: 14,
                                            //             color: Colors.grey
                                            //                 .withOpacity(0.8)),
                                            //       ),
                                            //     ),
                                            //   ],
                                            // ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(top: 4),
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    ' ${sceneData.reviewCounts} Reviews',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey
                                                            .withOpacity(0.8)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       right: 16, top: 8),
                                  //   child: Column(
                                  //     mainAxisAlignment:
                                  //     MainAxisAlignment.center,
                                  //     crossAxisAlignment:
                                  //     CrossAxisAlignment.end,
                                  //     children: <Widget>[
                                  //       Text(
                                  //         '\$${hotelData.perNight}',
                                  //         textAlign: TextAlign.left,
                                  //         style: TextStyle(
                                  //           fontWeight: FontWeight.w600,
                                  //           fontSize: 22,
                                  //         ),
                                  //       ),
                                  //       Text(
                                  //         '/per night',
                                  //         style: TextStyle(
                                  //             fontSize: 14,
                                  //             color:
                                  //             Colors.grey.withOpacity(0.8)),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
