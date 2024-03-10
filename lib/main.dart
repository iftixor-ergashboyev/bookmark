import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Bookmark());
}
class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: BookmarkList(),
    );
  }
}

class BookmarkList extends StatefulWidget {
  const BookmarkList({super.key});

  @override
  State<BookmarkList> createState() => _BookmarkListState();
}

class _BookmarkListState extends State<BookmarkList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              children: [
                Align(
                  child: Text("Bookmark", style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)
                  )),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    for(int i=0; i<4; i++)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 248, 248),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            _showBottomSheet(context);
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width / 4,
                                margin: EdgeInsets.only(left: 8),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0x15FF5300),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Image.network('https://wheelforcecentre.com/wp-content/uploads/2022/10/Where-I-can-find-best-luxury-car-repair-services.jpg',
                                  fit: BoxFit.cover,
                                  height: 120,
                                  width: 120,
                                  ),
                                ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Padding(
                            padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Shine Squad car wash", style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black))),
                                      SizedBox(width: 8),
                                      Icon(Icons.bookmark, color: Colors.deepOrange, size: 17,),
                          
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on, color: Color(0xFC02103B), size: 15),
                                      SizedBox(width: 1,),
                                      Text("Tashkent, Uzbekistan", style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,
                                        fontSize: 10)
                                      ),)
                                    ],
                                  ),
                                  Text("25.000so'm - 30.000 / Service", style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.deepOrange, fontSize: 10),
                                  )),
                                ],
                              ),
                          ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
          return Column(
                children: [
                  SizedBox(height: 25),
                  for(int i=0; i<1; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width / 4,
                              margin: EdgeInsets.only(left: 8),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0x15FF5300),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.network('https://wheelforcecentre.com/wp-content/uploads/2022/10/Where-I-can-find-best-luxury-car-repair-services.jpg',
                                fit: BoxFit.cover,

                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Shine Squad car wash", style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black))),
                                        SizedBox(width: 8),
                                        Icon(Icons.bookmark, color: Colors.deepOrange, size: 17,),

                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.location_on, color: Color(0xFC02103B), size: 15),
                                        SizedBox(width: 1,),
                                        Text("Tashkent, Uzbekistan", style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black,
                                                fontSize: 10)
                                        ),)
                                      ],
                                    ),
                                    Text("25.000so'm - 30.000 / Service", style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(color: Colors.deepOrange, fontSize: 10),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 10),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                         height: 50,
                         width: 180,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             gradient: const LinearGradient(
                                 colors: [
                                   Colors.white54,
                                   Colors.white
                                 ]
                             )
                         ),
                         child: InkWell(
                           onTap: () {
                             Navigator.pop(context);
                           },
                           borderRadius: BorderRadius.circular(50),
                           splashColor: Colors.black,
                           child: Center(child: Text('Cancel',style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.w600)), )),
                         )
                     ),
                     SizedBox(width: 3),
                     Container(
                         height: 50,
                         width: 180,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             gradient: const LinearGradient(
                                 colors: [
                                   Colors.deepOrange,
                                   Colors.red
                                 ]
                             )
                         ),
                         child: InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Remove()));
                           },
                           borderRadius: BorderRadius.circular(50),
                           splashColor: Colors.black,
                           child: Center(child: Text('Remove',style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)), )),
                         )
                     ),
                   ],
                 ),
                ],
          );
      },
    );
  }
}

class Remove extends StatefulWidget {
  const Remove({super.key});

  @override
  State<Remove> createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            Icon(Icons.check_circle, color: Colors.deepOrange, size: 50,),
            SizedBox(height: 5,),
            Text("Done", style: GoogleFonts.montserrat(textStyle: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
            )),),
            SizedBox(height: 22),
            Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                        colors: [
                          Colors.deepOrange,
                          Colors.red
                        ]
                    )
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookmarkList()));
                  },
                  borderRadius: BorderRadius.circular(50),
                  splashColor: Colors.black,
                  child: Center(child: Text('Back',style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)), )),
                )
            ),
          ],
        ),
      ),
    );
  }
}







