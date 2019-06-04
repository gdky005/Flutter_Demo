import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextDemo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = "虹羽";
  final String _title = "外婆";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '''《$_title》 ---  $_author。
药片是吃不完的
疼的时候吃，呼吸不了的时候吃
百无聊赖的时候，也得吃
你从骨瘦如柴的手指上取下银戒指
放在我的手心，上面是一朵花的模样
爱开玩笑的老太太，道别却说得这么认真
“外婆要和你们说再见了。”

画面裂成碎片，变成了割人的玻璃
在每一次经过医院的时候
在每一次看到穿着蓝粉色护工服的阿姨时
我总是把脚步放的很慢，我怕他们突然回头
我怕看到让我熟悉的面孔
像从前那样和我打招呼
“今天又来看外婆了吗？

最长文字显示哦，最长文字显示哦，最长文字显示哦，最长文字显示哦，最长文字显示哦，”''',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 18,
      overflow: TextOverflow.ellipsis,
    );
  }
}
