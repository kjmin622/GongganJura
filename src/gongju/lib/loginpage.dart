import 'package:flutter/material.dart';
import 'package:gongju/listpage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFF008A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:100),
                  Text(
                    '공주',
                    style: TextStyle(fontSize: 64, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '내 주변의 공간 활용',
                    style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]
              ),
            ),
          ),
          Column(
            children: <Widget>[
              GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Container(
                width:screen_width*0.7,
                margin: EdgeInsets.all(10.0), // 컨테이너와 주변 위젯과의 간격
                padding: EdgeInsets.all(15.0), // 컨테이너 내부의 텍스트와 테두리 사이의 간격
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.yellow, // 배경색
                  borderRadius: BorderRadius.circular(15), // 테두리 둥글게
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/kakaologo.png',width:25, height:23),
                      SizedBox(width:10),
                      Text(
                      '카카오로 바로 시작하기', // 텍스트 내용
                      style: TextStyle(
                        color: Color(0xFF535353), // 텍스트 색상
                        fontSize: 17, // 텍스트 크기
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Container(
                width:screen_width*0.7,
                margin: EdgeInsets.all(10.0), // 컨테이너와 주변 위젯과의 간격
                padding: EdgeInsets.all(15.0), // 컨테이너 내부의 텍스트와 테두리 사이의 간격
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white, // 배경색
                  borderRadius: BorderRadius.circular(15), // 테두리 둥글게
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/googlelogo.png',width:25, height:23),
                      SizedBox(width:10),
                      Text(
                      '구글로 바로 시작하기', // 텍스트 내용
                      style: TextStyle(
                        color: Color(0xFF535353), // 텍스트 색상
                        fontSize: 17, // 텍스트 크기
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Container(
                width:screen_width*0.7,
                margin: EdgeInsets.all(10.0), // 컨테이너와 주변 위젯과의 간격
                padding: EdgeInsets.all(15.0), // 컨테이너 내부의 텍스트와 테두리 사이의 간격
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white, // 배경색
                  borderRadius: BorderRadius.circular(15), // 테두리 둥글게
                ),
                child: Text(
                  '공주로 시작하기', // 텍스트 내용
                  style: TextStyle(
                    color: Color(0xFF535353), // 텍스트 색상
                    fontSize: 17, // 텍스트 크기
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Container(
                width:screen_width*0.7,
                margin: EdgeInsets.all(10.0), // 컨테이너와 주변 위젯과의 간격
                padding: EdgeInsets.all(0.0), // 컨테이너 내부의 텍스트와 테두리 사이의 간격
                alignment: Alignment.center,
                child: Center(
                    child: Text(
                        '비회원으로 둘러보기', // 텍스트 내용
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 17, // 텍스트 크기
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}