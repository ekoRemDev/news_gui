import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  double _fontSize = 18.00;


  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // Fixed the Rotation

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff707070),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [


          Container(
            width : MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.10 ,
            child: VerticalDivider(thickness: MediaQuery.of(context).size.width*0.003,color: Colors.white,),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.029,
            child: SizedBox(height: 0,),
          ),
          Container(
            width : MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.569 ,
            child: Stack(
              children: [

                Column(
                  mainAxisAlignment : MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/images/login.png',
                        height: MediaQuery.of(context).size.height * 0.569,
                        fit: BoxFit.fitHeight,),
                    ),
                  ],
                ),


                Column(
                  mainAxisAlignment : MainAxisAlignment.start,
                  children: [

                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.14,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: Image.asset('assets/images/logo.png',
                            width: MediaQuery.of(context).size.width * 0.192,
                            height: MediaQuery.of(context).size.height * 0.037,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.049,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.632,
                          child: Text("어서오세요.",textAlign: TextAlign.center, style: TextStyle(fontSize: _fontSize, color: Colors.white,fontWeight: FontWeight.normal,),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.632,
                          child: Text("라이브쇼핑 방송용 어플입니다.",textAlign: TextAlign.center, style: TextStyle(fontSize: _fontSize, color: Colors.white,fontWeight: FontWeight.normal,),),
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.017,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: Text("쉽고 재밋는 방송 되시길 바라겠습니다.",textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.normal,),),
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.141,),

                    /// email field
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(width: MediaQuery.of(context).size.width * 0.050,),

                        /// label
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "ID",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                    fontSize: _fontSize,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// email input field
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: _fontSize,
                            ),
                            decoration: InputDecoration(
                              // border: InputBorder.none,
                                border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xffFFFFFF)
                                    )
                                ),
                              hintText: "abc123@naver.com",
                              hintStyle: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: _fontSize,
                              ),
                              suffixIcon: _isEmailValid == true
                                  ? IconButton(icon: Icon(Icons.clear, color: Colors.green[900],),)
                                  : IconButton(icon: Icon(Icons.clear, color: Colors.red[900],),)
                            ),
                            onSubmitted: (e) {
                            },
                            onChanged:(email){
                              if (email.length > 3) {
                                setState(() {
                                  _isEmailValid = true;
                                });
                              }
                              else{
                                setState(() {
                                  _isEmailValid = false;
                                });
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),

                        SizedBox(width: MediaQuery.of(context).size.width * 0.050,),

                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.012,),

                    /// password field
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(width: MediaQuery.of(context).size.width * 0.050,),

                        /// label
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PW",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: _fontSize,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// password input field
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: _fontSize,
                            ),
                            decoration: InputDecoration(
                                border: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xffFFFFFF)
                                    )
                                ),
                                hintText: "비밀번호를 입력해주세요.",
                                hintStyle: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: _fontSize,
                                ),
                                suffixIcon: _isPasswordValid == true
                                    ? IconButton(icon: Icon(Icons.clear, color: Colors.green[900],),)
                                    : IconButton(icon: Icon(Icons.clear, color: Colors.red[900],),)
                            ),
                            onSubmitted: (e) {
                            },
                            onChanged:(email){
                              if (email.length > 3) {
                                setState(() {
                                  _isPasswordValid = true;
                                });
                              }
                              else{
                                setState(() {
                                  _isPasswordValid = false;
                                });
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),

                        SizedBox(width: MediaQuery.of(context).size.width * 0.050,),

                      ],
                    ),

                    // SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.021,),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.569 * 0.021,),

                  ],
                ),
              ],
            ),
          ),


          SizedBox(height: MediaQuery.of(context).size.height * 0.030,),

          /// Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(width: MediaQuery.of(context).size.width * 0.050,),

              Container(
                // height: MediaQuery.of(context).size.height * 0.055,
                height: 45,
                width: MediaQuery.of(context).size.width * 0.90,
                child: ButtonTheme(
                  highlightColor: Colors.red,
                  splashColor: Colors.green,
                  minWidth: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    elevation: 5,
                    color: Color(0xff030303).withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        // side: BorderSide(color: Colors.white),
                    ),
                    onPressed: (){
                      // Do some stuff here
                    },
                    child: Text(
                      "로그인하기",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(fontSize: _fontSize, color: Color(0xffff5570)),),
                  ),
                ),
              ),

              SizedBox(width: MediaQuery.of(context).size.width * 0.050,),
            ],
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.040,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.283,
                height: MediaQuery.of(context).size.width * 0.060,
                child: Text("계정 찾기",textAlign: TextAlign.center, style: TextStyle(fontSize: _fontSize, color: Colors.white,fontWeight: FontWeight.normal,),),
              ),
            ],
          ),

        ],
      ),

    );
  }

}