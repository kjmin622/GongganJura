import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Marker extends StatelessWidget {
  final bool isHighlighted;

  const Marker({Key? key, this.isHighlighted = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      
      backgroundColor: isHighlighted ? Colors.pink : Colors.grey[300],
      child: CircleAvatar(
        radius: 14,
        backgroundColor: Colors.white,
        
        child: CircleAvatar(
          radius: 8,
          backgroundColor: isHighlighted ? Colors.pink : Colors.grey[300],
        ),
        
      ),
    );
  }
}

class PlaceRegisterPage extends StatefulWidget{
  @override
  _PlaceRegisterPage createState() => _PlaceRegisterPage();
}

class _PlaceRegisterPage extends State<PlaceRegisterPage> {
  int start=1, end=2; bool scroll_state = false;
  int date_start=1, date_end=3; bool date_scroll_state = false;
  var is_label1 = [false, false, false, false, false, false];
  var is_label2 = [false, false];
  final picker = ImagePicker();
  XFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    final markerLabels = ["한 박스", "두 박스", "세 박스", "네 박스", "다섯 박스"];
    final markerLabels2 = ["1주일", "1개월", "3개월", "6개월", "1년"];
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "내 공간 등록하기",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 1,
      ),

      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            // 제목
            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "제목",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left:5,right:5),
                    padding: EdgeInsets.only(left:20),
                    height:55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width:2,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    child: TextField(
                        decoration: InputDecoration(
                          hintText: "공간 정보 요약",
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                  ),
                ],
              ),
            ),

            // 공간 사진
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[
                      Text(
                        "공간 사진",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "  공간을 잘 보여줄 수 있는 사진을 올려보세요.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 7),
                  Row(
                    children: [
                      _imageFile != null ? Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Image.file(File(_imageFile!.path), width:80, height:80, fit:BoxFit.cover),
                            ]
                          ),
                        ) : SizedBox(width:0),
                      
                      GestureDetector(
                        onTap: () async{
                          final pickedFile = await picker.pickImage(source: ImageSource.gallery);
                          if(pickedFile != null){
                            setState((){
                              _imageFile = pickedFile;
                            });
                          }
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Image.asset("assets/images/camera.png", width:30, height:30, fit:BoxFit.cover),
                              Text(
                                _imageFile != null ? "1/10" : "0/10",
                              )
                            ]
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // 보관하고 싶은 물건
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[
                      Text(
                        "보관하고 싶은 물건",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 7),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[0] = !is_label1[0];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[0] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "의류",
                              style: TextStyle(
                                color: is_label1[0] ? Colors.white : Colors.black,
                                fontWeight: is_label1[0] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),
                      
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[1] = !is_label1[1];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[1] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "도서",
                              style: TextStyle(
                                color: is_label1[1] ? Colors.white : Colors.black,
                                fontWeight: is_label1[1] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[2] = !is_label1[2];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[2] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "전자제품",
                              style: TextStyle(
                                color: is_label1[2] ? Colors.white : Colors.black,
                                fontWeight: is_label1[2] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[3] = !is_label1[3];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[3] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "신발",
                              style: TextStyle(
                                color: is_label1[3] ? Colors.white : Colors.black,
                                fontWeight: is_label1[3] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[4] = !is_label1[4];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[4] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "악기",
                              style: TextStyle(
                                color: is_label1[4] ? Colors.white : Colors.black,
                                fontWeight: is_label1[4] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label1[5] = !is_label1[5];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label1[5] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "의류",
                              style: TextStyle(
                                color: is_label1[5] ? Colors.white : Colors.black,
                                fontWeight: is_label1[5] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 물건 부피
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[
                      Text(
                        "물건 부피",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "  기준 사이즈는 공주 안심박스 60x40x45(cm) 입니다.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 7),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5 * 2 - 1, (index) {
                            if (index % 2 == 1) {
                              // 각 마커 사이에 위치한 선
                              return Expanded(
                                child: Container(
                                  height: 5,
                                  color: index ~/ 2 >= start && index ~/ 2 < end
                                      ? Colors.pink
                                      : Colors.grey,
                                ),
                              );
                            } else {
                              // 마커
                              return GestureDetector(
                                onTap: (){
                                  setState((){
                                    int nowidx = index ~/ 2;
                                    if(nowidx > end) end = nowidx;
                                    else if(nowidx < start) start = nowidx;
                                    else{
                                      if(scroll_state) start = nowidx;
                                      else end = nowidx;
                                      scroll_state = !scroll_state;
                                    }

                                  });
                                },
                                child: Container(
                                  height: 50,
                                  //child: Marker(isHighlighted: index ~/ 2 == start || index ~/ 2 == (end+1)),
                                  child: Marker(isHighlighted: index ~/ 2 >= start && index ~/ 2 <= (end)),
                                ),
                              );
                            }
                          }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: markerLabels.map((label) => Text(label)).toList(),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            
            // 보관 조건
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[
                      Text(
                        "보관 조건",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 7),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label2[0] = !is_label2[0];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label2[0] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "직사광선 금지",
                              style: TextStyle(
                                color: is_label2[0] ? Colors.white : Colors.black,
                                fontWeight: is_label2[0] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            is_label2[1] = !is_label2[1];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right:10),
                          decoration: BoxDecoration(
                            color: is_label2[1] ? Colors.pink : Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                              "습기 금지",
                              style: TextStyle(
                                color: is_label2[1] ? Colors.white : Colors.black,
                                fontWeight: is_label2[1] ? FontWeight.bold : null,
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 보관 기간
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[
                      Text(
                        "보관 기간",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 7),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5 * 2 - 1, (index) {
                            if (index % 2 == 1) {
                              // 각 마커 사이에 위치한 선
                              return Expanded(
                                child: Container(
                                  height: 5,
                                  color: index ~/ 2 >= date_start && index ~/ 2 < date_end
                                      ? Colors.pink
                                      : Colors.grey,
                                ),
                              );
                            } else {
                              // 마커
                              return GestureDetector(
                                onTap: (){
                                  setState((){
                                    int nowidx = index ~/ 2;
                                    if(nowidx > date_end) date_end = nowidx;
                                    else if(nowidx < date_start) date_start = nowidx;
                                    else{
                                      if(date_scroll_state) date_start = nowidx;
                                      else date_end = nowidx;
                                      date_scroll_state = !date_scroll_state;
                                    }

                                  });
                                },
                                child: Container(
                                  height: 50,
                                  child: Marker(isHighlighted: index ~/ 2 >= date_start && index ~/ 2 <= (date_end)),
                                ),
                              );
                            }
                          }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: markerLabels2.map((label) => Text(label)).toList(),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                showDialog(
                  context: context,
                  barrierDismissible: false, 
                  barrierColor: Colors.black.withOpacity(0.8),
                  builder: (BuildContext context) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // 컨텐츠 크기에 맞춰서 크기를 정합니다.
                        children: <Widget>[
                          Text(
                            textAlign: TextAlign.center,
                            '공간 등록이\n완료되었습니다!',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(height:10),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width:screen_width*0.8,
                              padding:EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pink,
                              ),
                              child: Center(
                                child: Text(
                                  '홈으로 돌아가기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                  ),  
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.only(left:5,right:5),
                width:screen_width*0.9,
                height:55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    "등록 완료하기",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:50),
          ],
        ),
      ),
    );
  }
}