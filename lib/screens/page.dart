import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../cubit/faster_bar_cubit.dart';

class News extends StatefulWidget {
   News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
   int  ?click;

List image=[
  'assets/images/593c0eac981b4da390568868d72bc803.png',
  'assets/images/593c0eac981b4da390568868d72bc803.png'
];
   List imagee=[
     'assets/images/c00223e6f2740ac799449e0895416c82.jpeg',
     'assets/images/c00223e6f2740ac799449e0895416c82.jpeg',
     'assets/images/c00223e6f2740ac799449e0895416c82.jpeg',
     'assets/images/c00223e6f2740ac799449e0895416c82.jpeg',
   ];

List data=[
  'Healthy',
  'Technology',
  'Finance',
  'Arts',
  'sports'
];

  @override
  Widget build(BuildContext context) {

    final VoidCallback onPresse8d;
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Row(
            children: [

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:8,right: 16,bottom: 8,left: 16),
                  child: SizedBox(
                    height: 40,

                    child: TextFormField(


                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Dogecoin to the Moon...',
                      hintStyle: TextStyle(
                        fontFamily:'Nunito',
                        fontSize: 15,
                        color: Color(0xFF818181),
                        // height: 16.37,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(
                          color: Color(0xFFF0F1FA), // Set the border color
                          width: 4.0, // Set the border width
                        ),
                      ),)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 8,bottom: 10,left: 8),
                child: Container(
                  height: 39,
                  width: 38,

                  child:Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.red,
                        shape: const CircleBorder(),
                      ),

                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 30,
                          ),
                          Positioned(
                            top: 6,
                            right: 5,
                            child: Container(
                              width: 6.8,
                              height: 7.6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,
            horizontal: 16),
            child: Container(

              width: MediaQuery.of(context).size.width,
              // height: 21,
              child: Row(
                children: [
                  Text('Latest News',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'NewYorkSmallRegular',
                        fontWeight: FontWeight.w600
                      ),
                  ),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text('See All',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Nunito',
                    color: Color(0xFF0080FF),
                    fontSize: 20,
                  ),
                  )),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,
                  color: Color(0xFF0080FF),
                  )),

                ],
              ),
            ),
          ),
         Container(

           height: 325,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: image.length,
             itemBuilder: (context,index) {

               return

                 Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 285,
                     width: 395,
                     decoration: BoxDecoration(

                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                         image: AssetImage( image[index]),
                           fit: BoxFit.cover,


                       )

                     ),
                     child: Container(
                        width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           color: Color(0x71626262,),
                           borderRadius: BorderRadius.circular(10),
                         ),


                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Spacer(),
                               Text('by Ryan Browne',
                               style: TextStyle(
                                 fontFamily: 'Nunito',
                                 fontSize: 16,
                                 fontWeight: FontWeight.w800,
                                 color: Color(0xFFFFFFFF)
                               ),),
                               Text('Crypto investors should be prepared to lose all their money, BOE governor sayse',
                                 style: TextStyle(
                                     fontFamily: 'New York Small',
                                     fontSize: 24,
                                     color: Color(0xFFFFFFFF),
                                   fontWeight: FontWeight.w700
                                 ),),
                               SizedBox(height: 30,),
                               Text('“I’m going to say this very bluntly again,” '
                                   'he added. “Buy them only if you’re prepared to lose all your money.”',
                                 style: TextStyle(
                                     fontFamily: 'Nunito',
                                     fontSize: 13,
                                     fontWeight: FontWeight.w400,
                                     color: Color(0xFFFFFFFF)
                                 ),),
                             ],
                           ),
                         ))),
               );
             }
           ),
         ),
          SizedBox(height: 20,),


          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  setState(() {
                    click=index;
                  });
                },

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(


                          color: click== index ?Colors.red:Colors.black12,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      width: 100,
                      child:  Center(
                      child: Text(data[index],
                      style: TextStyle(
                      fontSize: 18
                  ),),
                      )),
                ),
              );
            }),
          ),
          Container(

            height: 325,
            child: ListView.builder(

                itemCount: imagee.length,
                itemBuilder: (context,index) {

                  return

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 160,
                          width: 395,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage( imagee[index]),
                                fit: BoxFit.cover,


                              )

                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0x71626262,),
                                borderRadius: BorderRadius.circular(10),
                              ),


                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Text('5 things to know about the of lupus',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFFFFFFFF)
                                      ),),

                                    Spacer(),
                                    Text('Matt Villano',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFFFFFFF)
                                      ),),
                                  ],
                                ),
                              ))),
                    );
                }
            ),
          ),
        ],
      ),
    );
  }
}
