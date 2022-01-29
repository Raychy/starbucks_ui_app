import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderItems extends StatefulWidget {
  const SliderItems({Key key}) : super(key: key);

  @override
  _SliderItemsState createState() => _SliderItemsState();
}

class _SliderItemsState extends State<SliderItems> {
   int _current = 0;
    final CarouselController _controller = CarouselController();

    List fruits = [
      "assets/images/ice.jpg",
      "assets/images/ice2.jpg",
      "assets/images/ice3.jpg",
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Container(
                  child: CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: fruits.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage(i))));
                    },
                  );
                }).toList(),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: fruits.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
      ],
    );
  }
}