import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<String> offerings = ['2 Bed', 'Dinner', 'Hot Tub', '1 AC', 'Car Wash'];

    int selectedIndex = 1;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  children: [
                    Container(
                      height: size.height / 3.5,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/hotel.jpg'), fit: BoxFit.fill)),
                    ),
                    Positioned(
                      left: size.width / 2.7,
                      top: 175,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('124 photos', style: TextStyle(fontSize: 12, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                top: 240,
                child: Container(
                  height: size.height / 1.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BaLi Motel\nVung Tau',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.place_outlined,
                                        color: Color(0xFF6E6D77),
                                        size: 18,
                                      ),
                                      Text(
                                        '  Indonesia',
                                        style: TextStyle(color: Color(0xFF6E6D77)),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/star.png', scale: 12),
                                      const Text(
                                        '  4.9',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      const Text(
                                        ' (6.8K reviews)',
                                        style: TextStyle(color: Color(0xFF6E6D77)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Text(
                                  '\$580/',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('night'),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                          child: Divider(
                            color: Color.fromARGB(235, 235, 235, 235),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: ReadMoreText(
                            'Set in Vung Tau, 100 meters from Front Beach, BaLi Motel Vung Tau offers accommodation with a garden, private parking and a shared Swimming Pool',
                            style: TextStyle(color: Color(0xFF6E6D77), fontSize: 16),
                            trimLines: 3,
                            trimMode: TrimMode.Line,
                            colorClickableText: Color(0xFFDD9959),
                            trimCollapsedText: 'Read more',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16.0, top: 16.0),
                          child: Text(
                            'What we offer',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16.0, bottom: 30.0),
                                child: Container(
                                  width: 75,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color.fromARGB(235, 235, 235, 235), width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                    color: index == selectedIndex ? Colors.white : Colors.transparent,
                                    boxShadow: index == selectedIndex
                                        ? const [
                                            BoxShadow(
                                              offset: Offset(0, 20),
                                              blurRadius: 15,
                                              spreadRadius: 2,
                                              color: Color.fromARGB(235, 235, 235, 235),
                                            ),
                                          ]
                                        : [],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/offerings/$index.png', height: 30),
                                      Text(
                                        offerings[index],
                                        style: const TextStyle(color: Color(0xFF1E1E1E)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 12.0),
                          child: Text(
                            'Hosted By',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        image: const DecorationImage(image: AssetImage('assets/profile.png'))),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Harleen Smith',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/star.png', scale: 12),
                                          const Text(
                                            '  4.9',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          const Text(
                                            ' (1.4K reviews)',
                                            style: TextStyle(color: Color(0xFF6E6D77)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFF09543),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 8),
                                      blurRadius: 15,
                                      spreadRadius: 2,
                                      color: Color.fromARGB(96, 240, 148, 67),
                                    ),
                                  ],
                                ),
                                child: const Icon(Icons.message_outlined, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color(0xFF62A6F7), borderRadius: BorderRadius.all(Radius.circular(18))),
                            child: const Center(
                                child: Text('Book Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ))),
                          ),
                        ),
                        Container(
                          height: 15,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/map.png'), fit: BoxFit.fill)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/back.png'),
                ),
              ),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/share.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0, right: 30.0, left: 15),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/heart.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
