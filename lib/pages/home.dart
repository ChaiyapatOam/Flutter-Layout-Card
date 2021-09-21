import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("อัพเดตข่าวสารสำคัญ")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            MyBox(
                "ทีมไทยเจ๋ง! คว้าแชมป์โลก AWC อีสปอร์ตเกม ROV",
                "ผู้สื่อข่าวรายงานว่าการแข่งขัน Arena of Valor World Cup ",
                "http://i0.wp.com/www.buriramguru.com/wp-content/uploads/2021/07/Esport-thailand2021.jpg"),
            SizedBox(
              height: 10,
            ),
            MyBox(
                "School of Code",
                "เรียนรู้การเขียนโปรแกรมเบื้องต้นพัฒนาทักษะการคิดวิเคราะห์",
                "https://cdn.pixabay.com/photo/2015/12/04/14/05/code-1076536_960_720.jpg"),
            SizedBox(
              height: 10,
            ),
            MyBox("Data Science With Python", "เรียนรู้ศาสตร์แห่งข้อมูล",
                "https://cdn.pixabay.com/photo/2017/03/23/09/34/artificial-intelligence-2167835_960_720.jpg"),
          ],
        ),
      ),
    );
  }

  Widget MyBox(String title, String detail, String img_url) {
    return Container(
      padding: EdgeInsets.all(20),
      //color: Colors.amber,
      height: 220,
      decoration: BoxDecoration(
        //color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(img_url),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            detail,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          TextButton(
              onPressed: () {
                print("Next Page=>>");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Text(
                "อ่านต่อ...",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
