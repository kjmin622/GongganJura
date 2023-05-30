import 'package:flutter/material.dart';


class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width:screen_width,
            child: Column(
              children: [
                SizedBox(height:80),

                Text(
                  "공주 Pay",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                SizedBox(height:20),

                Text(
                  textAlign: TextAlign.center,
                  "모두 안심할 수 있는\n공주페이를 사용해보세요",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
                
                SizedBox(height:30),

                // 채팅창에서 바로 송금
                Container(
                  width: screen_width*0.85,
                  height: 130,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF20272D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/caches.png", width:70, height:70),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:10),
                          Text(
                            "채팅창에서 바로 송금",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height:5),
                          Container(
                            width: screen_width * 0.5,
                            child: Text(
                              "채팅창 상단 송금하기 버튼을 눌러 거래 중인 공주에게 바로 송금해요.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),

                SizedBox(height:22),
                // 2단계 안전 송금 서비스
                Container(
                  width: screen_width*0.85,
                  height: 130,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF20272D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/money.png", width:70, height:70),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:10),
                          Text(
                            "2단계 안전 송금 서비스",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height:5),
                          Container(
                            width: screen_width * 0.5,
                            child: Text(
                              "짐 보관이 확인되었을 때 송금한 금액을 공주에게 보내드려요.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),

                SizedBox(height:22),
                // 보증금 안심 보관
                Container(
                  width: screen_width*0.85,
                  height: 130,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF20272D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/wallet.png", width:70, height:70),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:10),
                          Text(
                            "보증금 안심 보관",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height:5),
                          Container(
                            width: screen_width * 0.5,
                            child: Text(
                              "보증금을 거래종료 시까지 보관해드려요.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),

                SizedBox(height:130),
                Container(
                  width: screen_width*0.85,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "공주 pay 시작하기",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.grey, size: 45),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      )
    );
  }
}