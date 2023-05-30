import 'package:flutter/material.dart';
import 'package:gongju/chatpage.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool is_fav = false;
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2, 
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/place.jpg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height:15),
              Container(
                child:Row(
                  children: [
                    SizedBox(width:20),
                    ClipOval(
                      child: Image.asset("assets/images/place.jpg",width:50, height:50,fit:BoxFit.cover),
                    ),
                    SizedBox(width:10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "석준쨩",
                          style:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "해양동",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Center(
                child: FractionallySizedBox(
                  widthFactor: 0.92, // 가로선의 길이를 화면의 80%로 설정
                  child: Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 0.5,
                  ),
                ),
              ),
              Container(
                height:screen_height*0.25,
                child:
                Row(
                  children: [
                    SizedBox(width:screen_width*0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(height:10),
                        Text(
                          "의류, 신발, 가전제품 보관 가능해요",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          width: screen_width*0.90,
                          child: Text(
                            "도서관 앞건물 1층입니다. 선풍기나 에어컨 같은 가전제품도 보관 가능하고, 계절의류나 이불까지도 가능합니다. 편하게 연락주세요.",
                            style:TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.92,
                  child: Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 0.5,
                  ),
                ),
              ),
              SizedBox(height:5),
              Row(
                children:[
                  SizedBox(width:25),
                  IconButton(
                    icon: Icon(
                      is_fav ? Icons.favorite : Icons.favorite_border,
                      color: is_fav ? Colors.red : null,
                    ),
                    onPressed: (){
                      setState((){
                        is_fav = !is_fav;
                      });
                    },
                  ),
                  
                  Container(
                    height: 45,
                    child: VerticalDivider(
                      color: Colors.grey,
                      width: 30,
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    "20000원",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:20,
                    ),
                  ),
                  Text(
                    " / 3개월",
                    style:TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize:20,
                    ),
                  ),
                  SizedBox(width:50),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    },
                    child: Container(
                      width:100,
                      height:50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF008A), // 배경색
                        borderRadius: BorderRadius.circular(30), // 테두리 둥글게
                      ),
                      child: Text(
                        '채팅하기', // 텍스트 내용
                        style: TextStyle(
                          color: Colors.white, // 텍스트 색상
                          fontSize: 17, // 텍스트 크기
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 40,  // 위치를 조절하세요.
            left: 10,  // 위치를 조절하세요.
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),  // 흰색 뒤로가기 아이콘
              onPressed: () {
                Navigator.pop(context);  // 뒤로가기 동작
              },
            ),
          ),
        ],
      ),
    );
  }
}