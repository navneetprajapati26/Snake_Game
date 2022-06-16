import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Navneet extends StatefulWidget {
  const Navneet({Key? key}) : super(key: key);

  @override
  State<Navneet> createState() => _NavneetState();
}

class _NavneetState extends State<Navneet> {

  //for do a phone call
  Future<void> _phoneURL() async{
    final toPhonr ="+91 7271088606";
    final url = "tel: $toPhonr";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //for sanding a email
  Future<void> _emailURL() async{
    final toEmail = "navneetprajapati26@gmail.com";
    final sub = "About app";
    final massage ="Hello Navneet! ";
    final url = 'mailto: $toEmail?subject=${Uri.encodeFull(sub)}&body=${Uri.encodeFull(massage)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _linkedinURL() async {

    const url = 'https://www.linkedin.com/in/navneetprajapati26/';
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }
  }

  //opning github
  Future<void> _githubURL()async{
    const url = 'https://github.com/navneetprajapati26';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //opning insta
  Future<void> _instaURL()async{
    const url = 'http://instagram.com/navneet.prajapati_?utm_source=qr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Developer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/4.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/2.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/5.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/1.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    SvgPicture.asset(
                      'assets/3.svg',
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: 75,
                ),
                //MY IMG
                CircleAvatar(
                  backgroundColor: Color(0x80E3D7D8),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/my_img_jpg.jpg',
                      height: 180,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  radius: 110,
                ),

                //About me container
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  height: 1000,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0x80E3D7D8),
                      border: Border.all(
                        width: 10,
                        color: Color(0xCCE3D7D8),
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Navneet prajapati
                      Text(
                        "Navneet Prajapati",


                        style: GoogleFonts.kanit(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF343434),
                          ),
                        ),
                      ),

                      //Android App Developer
                      Text(
                        "Android App Developer",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF424141),
                        ),
                      ),

                      //discroption
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          // Todo: add body Discription
                          "Hii 👋, I am Navneet Prajapati a mobile Application developer, I use Flutter technology for mobile application development."
                          "flutter is a great tool for software development so that you can develop software for different types of operating systems as well as websites."
                        "I think the best thing about flutter is to create a very good user interface in less time, many packages of dart coding language used in flutter are easily available on the internet using which we can create very good user interface."

                        "As well as for backend i use firebase, firebase is one of the best tool for developers provided by google because by using firebase you can create a good backend for your software in less line of code in less time ."
                          "I use node.js, express, mangoDB to build a good API ",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Color(0xFF423535),

                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      //links
                      Text(
                        "Connect with me..",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF424141),
                        ),
                      ),

                      SizedBox(height: 15,),

                      Column(

                        children: [

                          //Todo: Add all the Shosle midea links
                          //mobile number
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SizedBox(width: 30,),
                              SvgPicture.asset(
                                'assets/mobile-phone-svgrepo-com.svg',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20,),
                              CupertinoButton(
                                onPressed: _phoneURL,
                                child: Text(
                                  "+91 7271088606",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF424141),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),

                          //gmail
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 30,),
                              SvgPicture.asset(
                                'assets/google-gmail-svgrepo-com.svg',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20,),
                              CupertinoButton(
                                onPressed: _emailURL,
                                child: Text(
                                  "Email me",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF424141),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),

                          //linkedin
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 30,),
                              SvgPicture.asset(
                                'assets/linkedin-svgrepo-com.svg',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20,),
                              CupertinoButton(

                                onPressed: _linkedinURL,
                                child: Text(
                                  "Linkedin",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF424141),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),


                          //github
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 30,),
                              SvgPicture.asset(
                                'assets/github-svgrepo-com (2).svg',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20,),
                              CupertinoButton(
                                onPressed: _githubURL,
                                child: Text(
                                  "github",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF424141),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),

                          //instagram
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 30,),
                              SvgPicture.asset(
                                'assets/instagram-svgrepo-com.svg',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 20,),
                              CupertinoButton(
                                onPressed: _instaURL,
                                child: Text(
                                  "instagram",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF424141),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25,),


                        ],
                      )
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
