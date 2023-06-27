import 'package:flutter/material.dart';
import 'package:tecudia_assignment/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ['Hotel', 'Flight', 'Place', 'Food'];
    List<String> hotelNames = ['One', 'Two', 'Three'];
    List<String> countryNames = ['Greece', 'Spain', 'India'];
    List<String> prices = ['488', '280', '325'];
    List<String> ratings = ['4.9', '4.8', '5.0'];

    int selectedIndex = 0;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Where you\nwanna go?',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, height: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-6, 6),
                            blurRadius: 10,
                            spreadRadius: 2,
                            color: Color.fromARGB(235, 235, 235, 235),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/search.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24.0, bottom: 24),
                      child: Container(
                        width: 82,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: index == selectedIndex
                                  ? Colors.transparent
                                  : const Color.fromARGB(235, 235, 235, 235),
                              width: 2),
                          borderRadius: BorderRadius.circular(20),
                          color: index == selectedIndex ? const Color(0xFF62A6F7) : Colors.transparent,
                          boxShadow: index == selectedIndex
                              ? [
                                  const BoxShadow(
                                    offset: Offset(8, 8),
                                    blurRadius: 12,
                                    spreadRadius: 5,
                                    color: Color.fromARGB(255, 216, 234, 255),
                                  )
                                ]
                              : [],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/categories/${categories[index]}.png',
                                height: 30, color: index == selectedIndex ? Colors.white : const Color(0xFF6E6D77)),
                            Text(
                              categories[index],
                              style: TextStyle(color: index == selectedIndex ? Colors.white : const Color(0xFF6E6D77)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
                    child: Text(
                      'Popular Hotels',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(color: Color(0xFFDD9959), fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 275,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Container(
                        width: 168,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/hotels/$index.png'), fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Hotel ${hotelNames[index]}',
                                  style:
                                      const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.place_outlined,
                                      color: Color.fromARGB(235, 235, 235, 235),
                                      size: 16,
                                    ),
                                    Text(
                                      '  ${countryNames[index]}',
                                      style: const TextStyle(color: Color.fromARGB(235, 235, 235, 235), fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '\$${prices[index]}/',
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                                        ),
                                        const Text(
                                          'night',
                                          style: TextStyle(color: Color.fromARGB(235, 235, 235, 235), fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/star.png', scale: 12),
                                        Text(
                                          ' ${ratings[index]}',
                                          style: const TextStyle(color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0, bottom: 16.0),
                child: Text(
                  'Hot Deals',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
                child: InkWell(
                  child: Container(
                    height: 225,
                    decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage('assets/hotel.jpg'), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(25), color: const Color(0xFFF1906D)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('25% OFF', style: TextStyle(fontSize: 12, color: Colors.white)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'BaLi Motel Vung Tau',
                                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/star.png', scale: 12),
                                      const Text(
                                        ' 4.9',
                                        style: TextStyle(color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.place_outlined,
                                            color: Color.fromARGB(235, 235, 235, 235),
                                            size: 16,
                                          ),
                                          Text(
                                            '  Indonesia',
                                            style: TextStyle(color: Color.fromARGB(235, 235, 235, 235), fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$580/',
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'night',
                                        style: TextStyle(color: Color.fromARGB(235, 235, 235, 235), fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProductDetails())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
