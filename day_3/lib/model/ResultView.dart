import 'package:cached_network_image/cached_network_image.dart';
import 'package:day_3/Screens/SecondScreen.dart';
import 'package:day_3/model/NASA_APOD.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    Key? key,
    required this.datamodel,
  }) : super(key: key);

  final NASAAPODModel datamodel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl: datamodel.hdurl!,
          placeholder: (context, url) => Lottie.asset(
            'lotties/loading.json',
            width: 200,
            height: 200,
            // fit: BoxFit.fill,
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Text(
                  datamodel.title!,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Text("Date : " + datamodel.date!),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Date : " + datamodel.explanation!,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      // color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(),
                        ),
                      );
                    },
                    child: Text("Go to Second Screen"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
