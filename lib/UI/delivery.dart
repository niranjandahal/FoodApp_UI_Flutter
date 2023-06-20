import 'package:flutter/material.dart';
import 'package:r03foodui/UI/pagemain.dart';
import 'package:r03foodui/reptfunction/repttext.dart';

class DeliveryUi extends StatefulWidget {
  const DeliveryUi({super.key});

  @override
  State<DeliveryUi> createState() => _DeliveryUiState();
}

class _DeliveryUiState extends State<DeliveryUi> {
  List time = [
    "7:00 AM",
    "8:00 AM",
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "1:00 PM",
    "2:00 PM",
    "3:00 PM",
    "4:00 PM",
    "5:00 PM",
    "6:00 PM",
    "7:00 PM",
    "8:00 PM",
    "9:00 PM",
    "10:00 PM",
    "11:00 PM",
    "12:00 AM",
    "1:00 AM",
    "2:00 AM",
    "3:00 AM",
    "4:00 AM",
    "5:00 AM",
    "6:00 AM",
    "7:00 AM"
  ];
  int? current;
  String ordertime = "Unspecified";
  String orderdate = "Unspecified";
  int? currentdcolor;
  bool shippingval = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.brown[400],
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pagemain()));
            }),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/seven.png'), fit: BoxFit.cover),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.27,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: subtittle("Choose a pickup method")),
            SizedBox(height: 13),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('lib/assets/scooter.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    subtittle("Shipping"),
                                    minortext("Ship it to your home"),
                                  ],
                                ),
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: shippingval,
                                  shape: CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      shippingval = !shippingval;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      //
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('lib/assets/parsel.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    subtittle("Self Pickup"),
                                    minortext("Pick it up at the resturant"),
                                  ],
                                ),
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: !shippingval,
                                  shape: CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      shippingval = !shippingval;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subtittle("Choose a date"),
                  SizedBox(height: 13),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        List date = [
                          9,
                          10,
                          11,
                          12,
                          13,
                          14,
                          15,
                        ];
                        List day = [
                          "Mon",
                          "Tue",
                          "Wed",
                          "Thu",
                          "Fri",
                          "Sat",
                          "Sun"
                        ];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentdcolor = index;
                            });
                          },
                          child: Container(
                            width: 65,
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.only(left: 2, right: 2),
                            decoration: BoxDecoration(
                              color: currentdcolor == index
                                  ? Colors.orange.withOpacity(0.7)
                                  : Colors.white.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentdcolor = index;
                                  orderdate = day[index];
                                });
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          color: currentdcolor == index
                                              ? Colors.red.shade300
                                              : Color.fromARGB(
                                                      255, 247, 164, 164)
                                                  .withOpacity(0.4),
                                        ),
                                        child: Center(
                                          child: subtittle("Dec"),
                                        )),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Text(date[index].toString(),
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600)),
                                          minortext(day[index].toString()),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subtittle("Choose a time"),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: time.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                              ordertime = time[index];
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.orange.withOpacity(0.8)
                                  : Colors.white.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(Icons.access_time),
                                SizedBox(width: 10),
                                mediumtext(time[index]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {
                        //alert
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Order Placed " +
                                  orderdate +
                                  " at " +
                                  ordertime),
                              content: minortext(
                                  "You will recieve a call to confirm your order"),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      //to go to the next page
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return pagemain();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        //order now button
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40),
                        ),

                        child: Center(
                          child: Text(
                            "Order Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
