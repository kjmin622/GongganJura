import 'package:flutter/material.dart';
import 'package:gongju/gongjupay.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "석준쨩", 
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 정보
          SizedBox(height:6),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(13),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/place.jpg',
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "의류, 신발, 가전제품 보관 가능합니다",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text(
                        "20,000원",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " / 3개월",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                  
                ],
              )
            ],
            
          ),
          // 송금하기 버튼
          Container(
            width:96,
            height:38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1)],
            ),
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(left:10),
            child: Row( // 가로로 아이콘과 버튼을 나열
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.credit_card, size: 25, color: Colors.grey[700],),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PayPage()),
                    );
                  },
                  child: Text(
                    '송금하기',
                    style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        
          // 가로줄
          const Center(
            child: FractionallySizedBox(
              widthFactor: 1, // 가로선의 길이를 화면의 80%로 설정
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 0.5,
              ),
            ),
          ),

          // 채팅창
          Container(
            height:screen_height*0.61,
            child: Column(
              children: [
                // 채팅 1
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width:screen_width*0.05),
                    Container(
                      width: screen_width*0.14,
                      padding:EdgeInsets.only(bottom: 8),
                      child: Text(
                        "오후 1:01",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ),
                    Container(
                      width: screen_width*0.76,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "안녕하세요! 제 물건을 3개월동안 맡기고 싶어요. 의류랑 신발인데 언제부터 가능하실까요?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )

                    ),
                    SizedBox(width:screen_width*0.05),
                  ],
                ),
                
                SizedBox(height:12),
                // 채팅 2
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width:screen_width*0.05),
                    Container(
                      width: screen_width*0.74,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "내일 3시 50분쯤 괜찮으신가요?\n제가 퇴근이 늦어서 가면 10시 넘을거 같아서요 ㅠㅠ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )

                    ),
                    Container(
                      width: screen_width*0.14,
                      margin: EdgeInsets.only(left: 5),
                      padding:EdgeInsets.only(bottom: 8),
                      child: Text(
                        "오후 1:04",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ),
                    SizedBox(width:screen_width*0.05),
                  ],
                ),
              ],
            ),
          ),

          // 가로줄
          const Center(
            child: FractionallySizedBox(
              widthFactor: 1, // 가로선의 길이를 화면의 80%로 설정
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 0.5,
              ),
            ),
          ),

          // 입력창
          Row(
            children:[
              SizedBox(width:screen_width*0.15),
              Container(
                width:screen_width*0.65,
                padding:EdgeInsets.only(left:screen_width*0.05,top:10, bottom:10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Text(
                  "메시지 보내기",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                width:screen_width*0.15,
                child: Icon(Icons.send, color: Colors.grey[700],),
                ),
            ],
          )
        ],
      )
    );
  }
}