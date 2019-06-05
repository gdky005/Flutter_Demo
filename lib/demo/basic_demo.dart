import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'http://e.hiphotos.baidu.com/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg'),
            alignment: Alignment.topCenter,
            // repeat: ImageRepeat.repeatY,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.indigoAccent[100].withOpacity(0.5), BlendMode.hardLight)
            ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(color: Colors.indigoAccent[100], width: 3.0),
//                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(6.0, 7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 20.0,
                    spreadRadius: 6.0,
                  ),
                ],
                shape: BoxShape.circle,
//                gradient: RadialGradient(
//                    colors: [Colors.indigoAccent[100], Colors.red[100]]),
                gradient: LinearGradient(
                    colors: [Colors.indigoAccent[100], Colors.red[100]],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'WangQing',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
          TextSpan(
              text: '.zkteam.cc',
              style: TextStyle(fontSize: 17.0, color: Colors.grey))
        ]));
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
