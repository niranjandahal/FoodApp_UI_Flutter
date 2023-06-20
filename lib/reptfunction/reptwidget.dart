import 'package:flutter/material.dart';
import 'package:r03foodui/UI/allclass.dart';
import 'package:r03foodui/reptfunction/repttext.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class recommendedfood extends StatefulWidget {
  List name = [];
  List price = [];
  List images = [];
  recommendedfood(List uname, List uprice, List uimages) {
    this.name = uname;
    this.price = uprice;
    this.images = uimages;
  }
  @override
  State<recommendedfood> createState() => _recommendedfoodState();
}

class _recommendedfoodState extends State<recommendedfood> {
  // foodhandle handeling = foodhandle();
  void addall(String aname, int aprice, String aimages) {
    foodhandle().addfoodname(aname);
    foodhandle().addfoodprice(aprice);
    foodhandle().addfoodimages(aimages);
    // foodhandle().printall();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "Added to cart ",
                  desc: widget.name[index] +" : \$"+ widget.price[index].toString(),
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Add More",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.orange.shade400
                    ),
                    DialogButton(
                      child: Text(
                        "Ok",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Colors.orange,
                        Colors.brown.shade200
                      ]),
                    )
                  ],
                ).show();

                setState(() {
                  addall(widget.name[index], widget.price[index],
                      widget.images[index]);
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/recommend/' +
                              widget.images[index] +
                              '.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Container(
                          child: Center(
                            child: Text(
                              "\$" + widget.price[index].toString(),
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            subtittle(widget.name[index].toString()),
                            // SizedBox(height: 1),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade700,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade700,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade700,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade700,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star_half_sharp,
                                  color: Colors.amber.shade600,
                                  size: 14,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "4.5",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Widget Recommendedfood(List name, List price, List images) {
// return Padding(
//   padding: EdgeInsets.all(10),
//   child: Expanded(
//     child: ListView.builder(
//       physics: BouncingScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: EdgeInsets.all(5),
//           child: GestureDetector(
//             onTap: () {},
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.6,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             'lib/assets/recommend/' + images[index] + '.png'),
//                         fit: BoxFit.fill,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Expanded(
//                   flex: 1,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(width: 10),
//                       Container(
//                         child: Center(
//                           child: Text(
//                             "\$" + price[index].toString(),
//                             style: TextStyle(
//                               color: Colors.green,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           subtittle(name[index].toString()),
//                           // SizedBox(height: 1),
//                           Row(
//                             // mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.amber.shade700,
//                                 size: 14,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.amber.shade700,
//                                 size: 14,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.amber.shade700,
//                                 size: 14,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.amber.shade700,
//                                 size: 14,
//                               ),
//                               Icon(
//                                 Icons.star_half_sharp,
//                                 color: Colors.amber.shade600,
//                                 size: 14,
//                               ),
//                               SizedBox(width: 10),
//                               Text(
//                                 "4.5",
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     ),
//   ),
// );
// }

Widget tabtime(String time) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: mediumtext(time.toString()),
  );
}


