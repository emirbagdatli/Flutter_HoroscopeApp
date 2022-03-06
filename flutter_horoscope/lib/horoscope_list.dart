// ignore_for_file: unused_local_variable, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_horoscope/data/strings.dart';
import 'package:flutter_horoscope/horoscope_item.dart';
import 'package:flutter_horoscope/model/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscopes;

  HoroscopeList() {
    allHoroscopes = dataSource();
    print(allHoroscopes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zodiac Signs'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return HoroscopeItem(listedHorocope: allHoroscopes[index]);
        },
        itemCount: allHoroscopes.length,
      )),
    );
  }

  List<Horoscope> dataSource() {
    List<Horoscope> temporary = [];
    for (int i = 0; i < 12; i++) {
      var horoscopeName = Strings.HOROSCOPE_NAMES[i];
      var horoscopeDate = Strings.HOROSCOPE_DATES[i];
      var horoscopeDetails = Strings.HOROSCOPE_DETAILS[i];
      var horoscopeAvatarImage =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + '${i + 1}.png';
      var horoscopeBannerImage =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + '_banner${i + 1}.png';

      Horoscope onComing = Horoscope(horoscopeName, horoscopeDate,
          horoscopeDetails, horoscopeAvatarImage, horoscopeBannerImage);
      temporary.add(onComing);
    }
    return temporary;
  }
}
