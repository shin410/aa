import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("柴犬について"),
      ),
      body: Column(
        children: [
          Text(
            "柴犬の性格",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
            height: 2.5),
          ),
          Text(
              "古くから猟犬や番犬として活躍していた柴犬は、賢く勇敢な性格です。独立心があり、我慢強い反面、頑固なところもあるので、子犬の頃からきちんとしつけておきましょう。見知らぬ人に対しては警戒して吠えることもありますが、飼い主には忠実です。猟犬気質があるため、体を動かしたり、オモチャで遊ぶことが好きです。"),
          Text(
            "柴犬の特徴",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 4.0,
            height: 2.5),
          ),
          Text(
              "日本原産の柴犬は、ピンと立った耳、キリッとした顔立ち、くるんと丸まった尻尾が特徴的。国の天然記念物に指定されている日本犬種のひとつで、他の日本犬よりも小型で飼いやすいところが人気です。国内だけでなく海外からも「SHIBA」と呼ばれ、注目されています。体つきはがっしりとしていて、筋肉が発達しており、寒さなど環境に順応でき、健康的な犬種です。"),
          Text(
            "柴犬の歴史",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 4.0,
              height: 2.5
            ),
          ),
          Text(
              "柴犬は縄文時代より、日本人と一緒に暮らしてきた歴史のある犬です。昔は本州各地で鳥やウサギを狩る猟犬として飼われていました。しかし、明治維新の文明開化によって、海外から洋犬が輸入されるようになると、その数が激減。そのため、日本犬保存会が創設され、日本犬が保護されるようになり、1936年（昭和11年）に柴犬が日本の天然記念物に指定されました。柴犬、秋田犬、甲斐犬、紀州犬、四国犬、北海道犬の6種の日本犬のうち、飼育頭数は柴犬が圧倒的に多いことで知られます。"),
        ],
      ),
    );
  }
}
