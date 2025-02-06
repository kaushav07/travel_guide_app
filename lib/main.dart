 import 'package:flutter/material.dart';

 void main() => runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
   ),
 );

 class HomePage extends StatefulWidget {
   @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/travel4.jpg'),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("What would you like to find?", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                   SizedBox(height: 30,),
                   Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                          hintText: "Search for cities, places ..."
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Text("Best Destination", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/Vrindawan.jpg', title: 'Vrindawan'),
                        makeItem(image: 'assets/images/varanasi.jpg', title: 'Varanasi'),
                        makeItem(image: 'assets/images/amritsar.jpg', title: 'Amritsar'),
                        makeItem(image: 'assets/images/goa_beaches.jpg', title: 'Goa'),
                        makeItem(image: 'assets/images/rajasthan.jpg', title: 'Rajasthan'),
                        makeItem(image: 'assets/images/Indiagate.jpg', title: 'Delhi'),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(.2)
                            ),
                            child: Icon(Icons.hotel, color: Colors.blue,),
                          ),
                        ),
                       AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red.withOpacity(.2)
                            ),
                            child: Icon(Icons.flight, color: Colors.red,),
                          ),
                       ),
                       AspectRatio(
                          aspectRatio: 1.5 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.withOpacity(.2)
                            ),
                            child: Icon(Icons.event, color: Colors.green,),
                          ),
                       ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,
                  ),
                  Text("Best Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(image: 'assets/images/lalitahotel.jpg', title: 'The Lalita Grand Mathura'),
                        makeItem(image: 'assets/images/tajhotelvaranasi.jpg', title: 'Taj Nadesar Palace, Varanasi'),
                        makeItem(image: 'assets/images/tajswarnaamrithotel.jpg', title: 'Taj Swarna, Amritsar'),
                        makeItem(image: 'assets/images/gh.jpg', title: 'Grand Hyatt, Goa'),
                        makeItem(image: 'assets/images/rh.jpg', title: 'The Oberoi Udaivilas, Udaipur'),
                        makeItem(image: 'assets/images/tajhotel.jpg', title: 'Taj Palace, New Delhi'),
                      ],
                    ),
                  ),
                  SizedBox(height: 80,),
                ],
              ),
            ),
                 Text("    Famous Events in Vrindawan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/janm.jpg', title: 'Janmashtami Celebration'),
                         makeItem(image: 'assets/images/janm2.jpg', title: 'Holi Celebration'),
                         makeItem(image: 'assets/images/janm3.jpg', title: 'Dahi Handi Celebration'),
                         makeItem(image: 'assets/images/janm4.jpg', title: 'Jhulan Yatra'),
                        ],
                      ),
                    ),
                 ),
                    SizedBox(height: 80,),
                    Text("    Famous Events in Varanasi", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/var.jpg', title: 'Dev Deepawali'),
                         makeItem(image: 'assets/images/var2.jpg', title: 'Ram Leela Celebration'),
                         makeItem(image: 'assets/images/var3.jpg', title: 'Mahashivratri'),
                         makeItem(image: 'assets/images/var4.jpg', title: 'Chhath Puja Celebration'),
                        ],
                      ),
                    ),
                 ),
                 SizedBox(height: 80,),
                   Text("    Famous Events in Amritsar", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/amrit.jpg', title: 'Baisakhi'),
                         makeItem(image: 'assets/images/amrit2.jpg', title: 'Basant Panchami'),
                         makeItem(image: 'assets/images/amrit3.jpg', title: 'Lohri Celebration'),
                         makeItem(image: 'assets/images/amrit4.jpg', title: 'Gurupurab Celebration'),
                        ],
                      ),
                    ),
                 ),
                 SizedBox(height: 80,),
                 Text("    Famous Events in Goa", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/goa.jpg', title: 'Goa Carnival'),
                         makeItem(image: 'assets/images/goa2.jpg', title: 'San Janv'),
                         makeItem(image: 'assets/images/goa3.jpg', title: 'Ganesh Chaturthi'),
                         makeItem(image: 'assets/images/goa4.jpg', title: 'Christmas'),
                        ],
                      ),
                    ),
                 ),
                 SizedBox(height: 80,),
                 Text("    Famous Events in Rajasthan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/raj.jpg', title: 'Dussehra Celebration'),
                         makeItem(image: 'assets/images/raj2.jpg', title: 'Teej Festival'),
                         makeItem(image: 'assets/images/raj3.jpg', title: 'Camel Fair'),
                         makeItem(image: 'assets/images/raj4.jpg', title: 'Elephant Festival'),
                        ],
                      ),
                    ),
                 ),
                 SizedBox(height: 80,),
                 Text("    Famous Events in Delhi", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20),),
                 SizedBox(height: 10,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         makeItem(image: 'assets/images/delhi.jpg', title: 'Independence day'),
                         makeItem(image: 'assets/images/delhi2.jpg', title: 'Republic Day'),
                         makeItem(image: 'assets/images/delhi3.jpg', title: 'Durga Puja'),
                         makeItem(image: 'assets/images/delhi4.jpg', title: 'Eid Celebration'),
                        ],
                      ),
                    ),
                 ),
                 SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1/ 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title, style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
