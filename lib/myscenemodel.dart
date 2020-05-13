class SceneList {
  SceneList({
    this.barcodeImgPath = '',
    this.sceneName = '',
    this.sceneDescription = '',
    this.sceneContactPerson = '',
    this.reviewCounts = 0,
  });

  String barcodeImgPath;
  String sceneName;
  String sceneDescription;
  String sceneContactPerson;
  int reviewCounts;

  static List<SceneList> scenelist = <SceneList>[
    SceneList(
      barcodeImgPath: 'img/hotel/hotel_1.png',
      sceneName: 'Grand Royal Hotel',
      sceneDescription: 'Wembley, London',
      sceneContactPerson: 'tom',
      reviewCounts: 0,
    ),
    SceneList(
      barcodeImgPath: 'img/hotel/hotel_1.png',
      sceneName: 'Grand Royal Hotel',
      sceneDescription: 'Wembley, London',
      sceneContactPerson: 'tom',
      reviewCounts: 0,
    ),
    SceneList(
      barcodeImgPath: 'img/hotel/hotel_1.png',
      sceneName: 'Grand Royal Hotel',
      sceneDescription: 'Wembley, London',
      sceneContactPerson: 'tom',
      reviewCounts: 0,
    ),
    SceneList(
      barcodeImgPath: 'img/hotel/hotel_1.png',
      sceneName: 'Grand Royal Hotel',
      sceneDescription: 'Wembley, London',
      sceneContactPerson: 'tom',
      reviewCounts: 0,
    ),
    SceneList(
      barcodeImgPath: 'img/hotel/hotel_1.png',
      sceneName: 'Grand Royal Hotel',
      sceneDescription: 'Wembley, London',
      sceneContactPerson: 'tom',
      reviewCounts: 0,
    ),
  ];
}
