import 'package:flutter/material.dart';
import 'package:nepflix/utils/fonts.dart';

class Description extends StatelessWidget {
  final String name, description, posterurl, vote, bannerurl, launchon;
  const Description({
    super.key,
    required this.name,
    required this.description,
    required this.posterurl,
    required this.vote,
    required this.bannerurl,
    required this.launchon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Positioned(
                    child: SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    bannerurl,
                    fit: BoxFit.cover,
                  ),
                )),
                Positioned(
                    bottom: 10,
                    child: ModifiedText(
                        text: '⭐ Average Rating - $vote',
                        size: 18,
                        color: Colors.white))
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(10),
            child: ModifiedText(text: name, size: 25, color: Colors.white),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: ModifiedText(
                // ignore: prefer_interpolation_to_compose_strings
                text: 'Released On - ' + launchon,
                size: 15,
                color: Colors.white),
          ),
          Row(
            children: [
              SizedBox(
                  height: 200, width: 100, child: Image.network(posterurl)),
              Flexible(
                  child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: ModifiedText(
                    text: description, size: 14, color: Colors.white),
              ))
            ],
          ),
        ],
      ),
    );
  }
}