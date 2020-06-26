import 'package:flutter/material.dart';

class XDonboarding1 extends StatelessWidget {
  XDonboarding1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-10.0, 29.0),
            child:
                // Adobe XD layer: 'illus2' (shape)
                Container(
              width: 380.0,
              height: 380.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(32.0, 447.0),
            child: SizedBox(
              width: 296.0,
              child: Text(
                'Get delivery of \nalmost anything',
                style: TextStyle(
                  fontFamily: 'Fira Sans',
                  fontSize: 34,
                  color: const Color(0xff545254),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(135.0, 593.0),
            child: Container(
              width: 12.0,
              height: 12.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(6.0, 6.0)),
                color: const Color(0xffd63731),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(174.0, 593.0),
            child: Container(
              width: 12.0,
              height: 12.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(6.0, 6.0)),
                color: const Color(0xffc1b3b3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(213.0, 593.0),
            child: Container(
              width: 12.0,
              height: 12.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(6.0, 6.0)),
                color: const Color(0xffc1b3b3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 5.0),
            child:
                // Adobe XD layer: 'LOGO_ONLY' (shape)
                Container(
              width: 55.0,
              height: 55.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(239.0, 20.0),
            child: SizedBox(
              width: 60.0,
              child: Text(
                'Log in',
                style: TextStyle(
                  fontFamily: 'Fira Sans',
                  fontSize: 18,
                  color: const Color(0xff545254),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(307.0, 20.0),
            child: SizedBox(
              width: 46.0,
              child: Text(
                'Help',
                style: TextStyle(
                  fontFamily: 'Fira Sans',
                  fontSize: 18,
                  color: const Color(0xff545254),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
