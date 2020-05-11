import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profileedit.dart';
import 'tracelist.dart';

class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  // static pushNovelDetail(BuildContext context, Novel novel) {
  //   AppNavigator.push(context, NovelDetailScene(novel.id));
  // }

  // static pushComicDetail(BuildContext context, String url) {
  //   AppNavigator.push(context, ComicDetailScene(""));
  // }

  // static pushComicReader(BuildContext context, String url) {
  //   AppNavigator.push(context, ComicReaderScene(""));
  // }



// static pushWeb(BuildContext context, String url, String title) {
//   AppNavigator.push(context, WebScene(url: url, title: title));
// }

// static pushReader(BuildContext context, int articleId) {
//   AppNavigator.push(context, ReaderScene(articleId: articleId));
// }
}
