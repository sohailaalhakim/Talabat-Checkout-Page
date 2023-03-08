import 'package:flutter/material.dart';
import 'package:project1/widgets.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double basketTotal = 0;
  double serviceCharge = 0;
  double circular = 10;
  bool x = false;
  bool y = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          title: Column(
            children: [
              Text(
                'Checkout',
                style: TextStyle(color: Colors.black.withOpacity(0.9)),
              ),
              const Text(
                'Macdonal\'s',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(circular),
                    border: Border.all(color: Colors.grey, width: 0.4)),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(circular),
                    border: Border.all(
                      width: 0.4,
                      color: Colors.grey,
                    )),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textrow(Icons.moped_outlined, 'Within 39 mins'),
                      orangText('Schedule'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              headtext('Pay with'),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      x = !x;
                      y = false;
                    });
                  },
                  child: Row(
                    children: [
                      x == true ? notSelected() : selected(),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 25,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Former_Visa_%28company%29_logo.svg/3072px-Former_Visa_%28company%29_logo.svg.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Debit/Credit card',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            y = !y;
                            x = false;
                          });
                        },
                        child: Row(
                          children: [
                            y == false ? notSelected() : selected(),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 25,
                              height: 20,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn3.vectorstock.com/i/1000x1000/48/97/dollar-bill-icon-vector-9744897.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Cach',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                headtext('Save on your order'),
                                orangText('Add voucher'),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            headtext('Payment Summery'),
                            const SizedBox(
                              height: 25,
                            ),
                            lastrow('Basket total', 'EGP $basketTotal'),
                            const SizedBox(
                              height: 7,
                            ),
                            lastrow('Service Charge', 'EGP $serviceCharge'),
                            const SizedBox(
                              height: 11,
                            ),
                            lastrowbold('Total amount',
                                'EGP ${basketTotal + serviceCharge}'),
                            const Text('Disclaimer',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Deliver by us, with live tracking',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusDirectional.only(
                                      topEnd: Radius.circular(25),
                                      topStart: Radius.circular(25),
                                    )),
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (ctx) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                          return Container(
                                              margin: const EdgeInsets.all(10),
                                              padding: const EdgeInsets.all(15),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.85,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: close()),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      headtext(
                                                          'Enter card details'),
                                                      Icon(
                                                        Icons
                                                            .center_focus_strong_outlined,
                                                        color:
                                                            Colors.orange[800],
                                                        size: 35,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  creditCard('Card number'),
                                                  Row(
                                                    children: [
                                                      creditCard('Expiry Date'),
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                      creditCard(
                                                          'Security code'),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                          'For faster and more secure checkout'),
                                                      CupertinoSwitch(
                                                          activeColor:
                                                              Colors.orange,
                                                          trackColor:
                                                              Colors.white,
                                                          value: x,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              x = value;
                                                            });
                                                          }),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.lock_outline,
                                                        color:
                                                            Colors.green[800],
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      orangText(
                                                          'More about card security'),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Divider(
                                                        thickness: 0.5,
                                                        color: Colors.grey,
                                                      ),
                                                      lastrow('Basket total',
                                                          'EGP $basketTotal'),
                                                      SizedBox(
                                                        height: 7,
                                                      ),
                                                      lastrow('Service Charge',
                                                          'EGP $serviceCharge'),
                                                      SizedBox(
                                                        height: 11,
                                                      ),
                                                      lastrow('Total amount',
                                                          'EGP ${basketTotal + serviceCharge}'),
                                                      SizedBox(
                                                        height: 40,
                                                      ),
                                                      Text(
                                                          'by blacing this order you agree to the credit card payment terms & conditions'),
                                                      Divider(
                                                        thickness: 0.5,
                                                        color: Colors.grey,
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: myButton(
                                                                'Cancel',
                                                                Colors.white,
                                                                Colors.orange[
                                                                    800]),
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          myButton(
                                                              'Pay',
                                                              Colors
                                                                  .orange[800],
                                                              Colors.white),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ));
                                        },
                                      );
                                    });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange[800],
                                ),
                                child: Center(
                                  child: Text('Place order',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
