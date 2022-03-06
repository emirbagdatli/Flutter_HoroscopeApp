import 'package:flutter/material.dart';
import 'package:flutter_horoscope/model/horoscope.dart';

//I've used this external package to change appbar's color according to the images.
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedZodiac;
  const HoroscopeDetail({required this.selectedZodiac, Key? key})
      : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    findAppbarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarColor,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.selectedZodiac.horoscopeName + " Zodiac Sign",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              background: Image.asset(
                'images/' + widget.selectedZodiac.horoscopeBannerImage,
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Text(
              widget.selectedZodiac.horoscopeDetails,
              style: Theme.of(context).textTheme.subtitle1,
            )),
          ),
        ),
      ],
    ));
  }

  void findAppbarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.selectedZodiac.horoscopeBannerImage}'));
    setState(() {
      appbarColor = _generator.dominantColor!.color;
    });
  }
}
