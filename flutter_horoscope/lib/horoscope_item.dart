import 'package:flutter/material.dart';
import 'package:flutter_horoscope/horoscope_details.dart';
import 'package:flutter_horoscope/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHorocope;
  const HoroscopeItem({required this.listedHorocope, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 3.5,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HoroscopeDetail(
                        selectedZodiac: listedHorocope,
                      )));
            },
            leading: Image.asset(
              "images/" + listedHorocope.horoscopeAvatarImage,
            ),
            title: Text(
              listedHorocope.horoscopeName,
              style: MyTextStyle.headline6,
            ),
            subtitle: Text(
              listedHorocope.horoscopeDate,
              style: MyTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
