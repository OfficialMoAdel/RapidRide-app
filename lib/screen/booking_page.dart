import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});
  static String id = 'BookingPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, -95.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 95.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            color: const Color(0xfff7f8f8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 10.0, end: 9.0),
                        Pin(size: 79.5, start: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 20.4, start: 0.1),
                              Pin(size: 20.4, start: 3.0),
                              child: SvgPicture.string(
                                _svg_zdf7vq,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.423, -1.0),
                              child: SizedBox(
                                width: 114.0,
                                height: 27.0,
                                child: Text(
                                  'My Bookings',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: ThirdColor,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 78.0, start: 0.5),
                              Pin(size: 20.0, end: 7.5),
                              child: Text(
                                'Active Now',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 15,
                                  color: ScandryColor,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3333333333333333,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 75.0, middle: 0.5154),
                              Pin(size: 20.0, end: 7.5),
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 15,
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3333333333333333,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 66.0, end: 4.5),
                              Pin(size: 20.0, end: 7.5),
                              child: Text(
                                'Cancelled',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 15,
                                  color: ScandryColor,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3333333333333333,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 18.0, end: 49.5),
                              Pin(size: 18.0, start: 4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border:
                                      Border.all(width: 1.0, color: ThirdColor),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 18.0, end: 2.5),
                              Pin(size: 18.0, start: 4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border:
                                      Border.all(width: 1.0, color: ThirdColor),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 4.0, end: 49.0),
                              Pin(size: 6.0, middle: 0.2653),
                              child: SvgPicture.string(
                                _svg_rbijo6,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 2.0, end: 6.5),
                              Pin(size: 2.0, start: 12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border:
                                      Border.all(width: 1.0, color: ThirdColor),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 2.0, end: 10.5),
                              Pin(size: 2.0, start: 12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border:
                                      Border.all(width: 1.0, color: ThirdColor),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 2.0, end: 14.5),
                              Pin(size: 2.0, start: 12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border:
                                      Border.all(width: 1.0, color: ThirdColor),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 1.0, end: -1.0),
                              child: SvgPicture.string(
                                _svg_u0x1y7,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 72.0, middle: 0.5134),
                              Pin(size: 1.0, end: -1.0),
                              child: SvgPicture.string(
                                _svg_zbb11f,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 327.0, start: 93.0),
                        child: Stack(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(36.0),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 52.0, start: 26.0),
                                  Pin(size: 52.0, start: 20.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xff707070)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 82.0, middle: 0.3653),
                                  Pin(size: 20.0, start: 37.0),
                                  child: Text(
                                    'wade waren',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 15,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333333333,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.079, 0.329),
                                  child: SizedBox(
                                    width: 138.0,
                                    height: 20.0,
                                    child: Text(
                                      'National Grand Park',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3333333333333333,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 100.0, middle: 0.3992),
                                  Pin(size: 20.0, end: 35.0),
                                  child: Text(
                                    'Fitness Center ',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 15,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333333333,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 15.0, end: 9.0),
                                  Pin(size: 1.0, middle: 0.2423),
                                  child: SvgPicture.string(
                                    _svg_cnu6l1,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 15.0, end: 9.0),
                                  Pin(size: 1.0, middle: 0.5613),
                                  child: SvgPicture.string(
                                    _svg_psk7px,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.3, -0.649),
                                  child: SizedBox(
                                    width: 70.0,
                                    height: 14.0,
                                    child: Text(
                                      'Handa Mobillio',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 73.0, end: 34.0),
                                  Pin(size: 21.0, start: 34.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xff169712),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 50.0, end: 45.0),
                                  Pin(size: 14.0, start: 37.0),
                                  child: Text(
                                    'Completed',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.577, -0.357),
                                  child: SizedBox(
                                    width: 26.0,
                                    height: 22.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_yiye1,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 25.0, end: 36.0),
                                  Pin(size: 14.0, middle: 0.3259),
                                  child: Text(
                                    '24.00',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.213, -0.348),
                                  child: SizedBox(
                                    width: 38.0,
                                    height: 14.0,
                                    child: Text(
                                      '14 MIN  ',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.57, -0.348),
                                  child: SizedBox(
                                    width: 32.0,
                                    height: 14.0,
                                    child: Text(
                                      '6.4 KM',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 54.0, start: 38.0),
                                  Pin(size: 14.0, middle: 0.4377),
                                  child: Text(
                                    'Date & time',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff959494),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 54.0, end: 28.0),
                                  Pin(size: 14.0, middle: 0.4377),
                                  child: Text(
                                    'Date & time',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff959494),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.024, -0.363),
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_b01st2,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                        Align(
                                          alignment: Alignment(0.185, -0.248),
                                          child: SizedBox(
                                            width: 5.0,
                                            height: 10.0,
                                            child: SvgPicture.string(
                                              _svg_r1mjl5,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 21.3, start: 38.4),
                                  Pin(size: 28.4, middle: 0.316),
                                  child: SvgPicture.string(
                                    _svg_glxtfk,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 35.0, start: 38.0),
                                  Pin(size: 35.0, end: 27.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 35.0, start: 34.0),
                                  Pin(size: 35.0, middle: 0.6644),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 12.7, start: 49.2),
                                  Pin(size: 16.9, end: 36.1),
                                  child: SvgPicture.string(
                                    _svg_fv4tz,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 18.0, start: 43.0),
                                  Pin(size: 18.0, middle: 0.659),
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_hpbwjz,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                      ),
                                      Align(
                                        alignment: Alignment(1.0, 0.059),
                                        child: SizedBox(
                                          width: 2.0,
                                          height: 1.0,
                                          child: SvgPicture.string(
                                            _svg_nemqab,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-1.0, 0.059),
                                        child: SizedBox(
                                          width: 2.0,
                                          height: 1.0,
                                          child: SvgPicture.string(
                                            _svg_qkfey5,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.059, 1.0),
                                        child: SizedBox(
                                          width: 1.0,
                                          height: 2.0,
                                          child: SvgPicture.string(
                                            _svg_vvlf1,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.059, -1.0),
                                        child: SizedBox(
                                          width: 1.0,
                                          height: 2.0,
                                          child: SvgPicture.string(
                                            _svg_memv,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: SizedBox(
                                          width: 6.0,
                                          height: 6.0,
                                          child: SvgPicture.string(
                                            _svg_wd2zwr,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 327.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(36.0),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 52.0, start: 26.0),
                                  Pin(size: 52.0, start: 20.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xff707070)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 82.0, middle: 0.3653),
                                  Pin(size: 20.0, start: 37.0),
                                  child: Text(
                                    'wade waren',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 15,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333333333,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.079, 0.329),
                                  child: SizedBox(
                                    width: 138.0,
                                    height: 20.0,
                                    child: Text(
                                      'National Grand Park',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3333333333333333,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 100.0, middle: 0.3992),
                                  Pin(size: 20.0, end: 35.0),
                                  child: Text(
                                    'Fitness Center ',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 15,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3333333333333333,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 15.0, end: 9.0),
                                  Pin(size: 1.0, middle: 0.2423),
                                  child: SvgPicture.string(
                                    _svg_cnu6l1,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 15.0, end: 9.0),
                                  Pin(size: 1.0, middle: 0.5613),
                                  child: SvgPicture.string(
                                    _svg_psk7px,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.3, -0.649),
                                  child: SizedBox(
                                    width: 70.0,
                                    height: 14.0,
                                    child: Text(
                                      'Handa Mobillio',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: const Color(0xff707070),
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 73.0, end: 34.0),
                                  Pin(size: 21.0, start: 34.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xff169712),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 50.0, end: 45.0),
                                  Pin(size: 14.0, start: 37.0),
                                  child: Text(
                                    'Completed',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.577, -0.357),
                                  child: SizedBox(
                                    width: 26.0,
                                    height: 22.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_yiye1,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 25.0, end: 36.0),
                                  Pin(size: 14.0, middle: 0.3259),
                                  child: Text(
                                    '24.00',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: ThirdColor,
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(0.213, -0.348),
                                  child: SizedBox(
                                    width: 38.0,
                                    height: 14.0,
                                    child: Text(
                                      '14 MIN  ',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.57, -0.348),
                                  child: SizedBox(
                                    width: 32.0,
                                    height: 14.0,
                                    child: Text(
                                      '6.4 KM',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 10,
                                        color: ThirdColor,
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      softWrap: false,
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 54.0, start: 38.0),
                                  Pin(size: 14.0, middle: 0.4377),
                                  child: Text(
                                    'Date & time',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff959494),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 54.0, end: 28.0),
                                  Pin(size: 14.0, middle: 0.4377),
                                  child: Text(
                                    'Date & time',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 10,
                                      color: const Color(0xff959494),
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-0.024, -0.363),
                                  child: SizedBox(
                                    width: 25.0,
                                    height: 25.0,
                                    child: Stack(
                                      children: <Widget>[
                                        SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_b01st2,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                        Align(
                                          alignment: Alignment(0.185, -0.248),
                                          child: SizedBox(
                                            width: 5.0,
                                            height: 10.0,
                                            child: SvgPicture.string(
                                              _svg_r1mjl5,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 21.3, start: 38.4),
                                  Pin(size: 28.4, middle: 0.316),
                                  child: SvgPicture.string(
                                    _svg_glxtfk,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 35.0, start: 38.0),
                                  Pin(size: 35.0, end: 27.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 35.0, start: 34.0),
                                  Pin(size: 35.0, middle: 0.6644),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: PrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 12.7, start: 49.2),
                                  Pin(size: 16.9, end: 36.1),
                                  child: SvgPicture.string(
                                    _svg_fv4tz,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 18.0, start: 43.0),
                                  Pin(size: 18.0, middle: 0.659),
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: SizedBox.expand(
                                            child: SvgPicture.string(
                                          _svg_hpbwjz,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        )),
                                      ),
                                      Align(
                                        alignment: Alignment(1.0, 0.059),
                                        child: SizedBox(
                                          width: 2.0,
                                          height: 1.0,
                                          child: SvgPicture.string(
                                            _svg_nemqab,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-1.0, 0.059),
                                        child: SizedBox(
                                          width: 2.0,
                                          height: 1.0,
                                          child: SvgPicture.string(
                                            _svg_qkfey5,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.059, 1.0),
                                        child: SizedBox(
                                          width: 1.0,
                                          height: 2.0,
                                          child: SvgPicture.string(
                                            _svg_vvlf1,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.059, -1.0),
                                        child: SizedBox(
                                          width: 1.0,
                                          height: 2.0,
                                          child: SvgPicture.string(
                                            _svg_memv,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: SizedBox(
                                          width: 6.0,
                                          height: 6.0,
                                          child: SvgPicture.string(
                                            _svg_wd2zwr,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zdf7vq =
    '<svg viewBox="29.6 23.0 20.4 20.4" ><path transform="translate(6.0, -5.62)" d="M 33.75799942016602 49 L 23.5669994354248 38.80899810791016 L 33.75799942016602 28.61899948120117 L 35.09500122070312 29.95599937438965 L 27.19700050354004 37.85400009155273 L 43.94800186157227 37.85400009155273 L 43.94800186157227 39.76499938964844 L 27.19700050354004 39.76499938964844 L 35.09500122070312 47.6619987487793 L 33.75799942016602 49 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rbijo6 =
    '<svg viewBox="310.5 39.5 4.0 6.0" ><path transform="translate(310.5, 39.5)" d="M 0 0 L 4 6" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u0x1y7 =
    '<svg viewBox="29.5 99.5 334.0 1.0" ><path transform="translate(29.5, 99.5)" d="M 0 0 L 334 0" fill="none" fill-opacity="0.18" stroke="#707070" stroke-width="1" stroke-opacity="0.18" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zbb11f =
    '<svg viewBox="164.0 99.5 72.0 1.0" ><path transform="translate(164.0, 99.5)" d="M 0 0 L 72 0" fill="none" stroke="#ffb219" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cnu6l1 =
    '<svg viewBox="35.0 204.0 329.0 1.0" ><path transform="translate(35.0, 204.0)" d="M 0 0 L 329 0" fill="none" fill-opacity="0.18" stroke="#707070" stroke-width="1" stroke-opacity="0.18" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_psk7px =
    '<svg viewBox="35.0 308.0 329.0 1.0" ><path transform="translate(35.0, 308.0)" d="M 0 0 L 329 0" fill="none" fill-opacity="0.18" stroke="#707070" stroke-width="1" stroke-opacity="0.18" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yiye1 =
    '<svg viewBox="0.0 0.0 25.7 21.9" ><path transform="translate(0.0, -5.61)" d="M 24.35603713989258 14.9126091003418 L 24.35603713989258 13.9201831817627 C 24.35603713989258 12.10539245605469 23.1107063293457 10.57987785339355 21.43095588684082 10.14276504516602 L 21.42792510986328 8.50645637512207 C 21.42792510986328 6.909549713134766 20.12837409973145 5.609999656677246 18.53079414367676 5.609999656677246 L 18.37756729125977 5.609999656677246 L 4.819010257720947 9.816110610961914 C 4.51020336151123 9.833957672119141 4.217223644256592 9.905350685119629 3.942091941833496 10.01277732849121 L 3.906732559204102 10.01277732849121 C 1.752826571464539 10.01277732849121 0 11.76560306549072 0 13.9201831817627 L 0 23.62016677856445 C 0 25.77441024780273 1.752489805221558 27.52757263183594 3.906732082366943 27.52757263183594 L 20.44930648803711 27.52757263183594 C 22.60321044921875 27.52757263183594 24.35603713989258 25.77474594116211 24.35603713989258 23.62016677856445 L 24.35603713989258 22.33004379272461 C 25.13832664489746 22.02730178833008 25.69599914550781 21.2689208984375 25.69599914550781 20.38055038452148 L 25.69599914550781 16.86142730712891 C 25.69566345214844 15.97373390197754 25.13832855224609 15.21535396575928 24.35603713989258 14.9126091003418 Z M 23.67511367797852 20.38021469116211 C 23.67511367797852 20.41995239257812 23.64379501342773 20.45127105712891 23.60405921936035 20.45127105712891 L 18.13476753234863 20.45127105712891 C 18.09502983093262 20.45127105712891 18.06404876708984 20.41995239257812 18.06404876708984 20.38021469116211 L 18.06404876708984 16.86142921447754 C 18.06404876708984 16.82270050048828 18.09570503234863 16.79104614257812 18.13476753234863 16.79104614257812 L 23.60405921936035 16.79104614257812 C 23.64312171936035 16.79104614257812 23.67511367797852 16.82270240783691 23.67511367797852 16.86142921447754 L 23.67511367797852 20.38021469116211 Z M 18.65573120117188 7.639641761779785 C 19.08038520812988 7.700258255004883 19.40737533569336 8.065977096557617 19.40737533569336 8.508140563964844 L 19.41007041931152 10.01311302185059 L 11.00492191314697 10.01311302185059 L 18.65573120117188 7.639641761779785 Z M 20.44930648803711 25.50668716430664 L 3.907068967819214 25.50668716430664 C 2.86547589302063 25.50668716430664 2.020886182785034 24.66175842285156 2.020886182785034 23.61983108520508 L 2.020886182785034 13.9201831817627 C 2.020886182785034 12.87791633605957 2.86547589302063 12.03332614898682 3.907068967819214 12.03332614898682 L 20.44930839538574 12.03332614898682 C 21.49123764038086 12.03332614898682 22.33549118041992 12.87791538238525 22.33549118041992 13.9201831817627 L 22.33549118041992 14.77049732208252 L 18.13476753234863 14.77049732208252 C 16.98170852661133 14.77049732208252 16.04349899291992 15.7083683013916 16.04349899291992 16.86142921447754 L 16.04349899291992 20.38021469116211 C 16.04349899291992 21.53361129760742 16.98170852661133 22.47182083129883 18.13476753234863 22.47182083129883 L 22.33549118041992 22.47182083129883 L 22.33549118041992 23.62016677856445 C 22.33548927307129 24.66175842285156 21.49123764038086 25.50668716430664 20.44930648803711 25.50668716430664 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b01st2 =
    '<svg viewBox="0.0 0.0 24.6 24.6" ><path transform="translate(0.0, 0.0)" d="M 12.30136299133301 0 C 5.51880931854248 0 0.001000000163912773 5.518105983734131 0.001000000163912773 12.3006591796875 C 0.001000000163912773 19.08351135253906 5.518808841705322 24.60161590576172 12.30136299133301 24.60161590576172 C 19.08391952514648 24.60161590576172 24.60202217102051 19.08351135253906 24.60202217102051 12.3006591796875 C 24.60202217102051 5.518105983734131 19.08362197875977 0 12.30136299133301 0 Z M 12.30136299133301 22.82320785522461 C 6.499601364135742 22.82320785522461 1.779112219810486 18.10271835327148 1.779112219810486 12.3006591796875 C 1.779112219810486 6.49860143661499 6.49930477142334 1.778408527374268 12.30136299133301 1.778408527374268 C 18.10342216491699 1.778408527374268 22.82361221313477 6.49860143661499 22.82361221313477 12.3006591796875 C 22.82361221313477 18.10271835327148 18.10342216491699 22.82320785522461 12.30136299133301 22.82320785522461 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r1mjl5 =
    '<svg viewBox="11.4 5.6 5.3 9.6" ><path transform="translate(-27.09, -13.37)" d="M 42.94839477539062 26.80128479003906 C 42.94365310668945 26.80128479003906 42.93949890136719 26.80128479003906 42.93476104736328 26.80128479003906 L 40.27840805053711 26.84100341796875 L 40.27840805053711 19.88920211791992 C 40.27840805053711 19.39806747436523 39.88034439086914 19 39.38920593261719 19 C 38.89806747436523 19 38.5 19.39806747436523 38.5 19.88920211791992 L 38.5 27.74384307861328 C 38.5 27.74562072753906 38.50059509277344 27.74740219116211 38.50059509277344 27.74917984008789 C 38.50059509277344 27.75214004516602 38.5 27.75481033325195 38.5 27.75717926025391 C 38.50059509277344 27.79334259033203 38.50741195678711 27.82743072509766 38.51215744018555 27.86210632324219 C 38.51511764526367 27.88374328613281 38.51541519165039 27.90597534179688 38.51956939697266 27.92731475830078 C 38.52757263183594 27.96555328369141 38.54090118408203 28.00111770629883 38.55365371704102 28.03698348999023 C 38.56017303466797 28.05565643310547 38.5643196105957 28.07522201538086 38.5720329284668 28.0930061340332 C 38.58744049072266 28.12946319580078 38.60818862915039 28.16265869140625 38.6280517578125 28.19674301147461 C 38.63723373413086 28.21186065673828 38.64405059814453 28.22845840454102 38.65383529663086 28.24327850341797 C 38.67636108398438 28.27617645263672 38.70333099365234 28.30552291870117 38.73001098632812 28.3354606628418 C 38.74127197265625 28.34790802001953 38.75046157836914 28.36213684082031 38.76232147216797 28.37429046630859 C 38.79106903076172 28.40274429321289 38.8233757019043 28.42675399780273 38.85568618774414 28.45135116577148 C 38.86872863769531 28.46113586425781 38.88028335571289 28.47299194335938 38.89362335205078 28.482177734375 C 38.9286003112793 28.50588989257812 38.96683883666992 28.52456665039062 39.00506973266602 28.54294204711914 C 39.01840591430664 28.54916763305664 39.0302619934082 28.55805969238281 39.04389953613281 28.56369018554688 C 39.08835983276367 28.58236312866211 39.13578414916992 28.59540176391602 39.18380355834961 28.60696411132812 C 39.19269180297852 28.60903930664062 39.20099258422852 28.61318588256836 39.21018218994141 28.61496734619141 C 39.26768112182617 28.62652587890625 39.3272590637207 28.63304901123047 39.38832092285156 28.63304901123047 C 39.39276504516602 28.63304901123047 39.39751052856445 28.63304901123047 39.40195465087891 28.63304901123047 L 42.96114349365234 28.57969665527344 C 43.45198440551758 28.57228469848633 43.84412384033203 28.16799163818359 43.83700942993164 27.67715072631836 C 43.83019256591797 27.19075775146484 43.43330764770508 26.80128479003906 42.94839477539062 26.80128479003906 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_glxtfk =
    '<svg viewBox="58.4 219.4 21.3 28.4" ><path transform="translate(54.36, 219.37)" d="M 14.73849201202393 -0.01099999994039536 C 8.924246788024902 -0.01099999994039536 4 4.94161319732666 4 10.80727291107178 C 4 16.95039367675781 9.707870483398438 23.23268508911133 13.54709911346436 27.64810752868652 C 13.56216907501221 27.66583633422852 14.18268585205078 28.35461044311523 14.94680881500244 28.35461044311523 L 15.01417922973633 28.35461044311523 C 15.77918910980225 28.35461044311523 16.3952751159668 27.66583633422852 16.41034507751465 27.64810752868652 C 20.01288986206055 23.50659942626953 25.27487373352051 16.67647743225098 25.27487373352051 10.80727291107178 C 25.27487373352051 4.940727710723877 21.43387222290039 -0.0109997158870101 14.73849391937256 -0.0109997158870101 Z M 15.09395885467529 26.45848846435547 C 15.06293296813965 26.4895133972168 15.01772308349609 26.52408599853516 14.97783279418945 26.5533390045166 C 14.93705654144287 26.52497291564941 14.89273262023926 26.4895133972168 14.85993480682373 26.45848846435547 L 14.39632034301758 25.92484474182129 C 10.75654411315918 21.7496509552002 5.772019386291504 16.03114318847656 5.772019386291504 10.80638694763184 C 5.772019386291504 5.902529716491699 9.878068923950195 1.760134339332581 14.73760414123535 1.760134339332581 C 20.79119300842285 1.760134339332581 23.50107765197754 6.303206443786621 23.50107765197754 10.80638694763184 C 23.50107765197754 14.77237701416016 20.6715202331543 20.03968238830566 15.09307289123535 26.45848846435547 Z M 14.66846179962158 5.356473445892334 C 11.7316427230835 5.356473445892334 9.349743843078613 7.737486362457275 9.349743843078613 10.67519187927246 C 9.349743843078613 13.61289691925049 11.7316427230835 15.99390983581543 14.66846179962158 15.99390983581543 C 17.60527992248535 15.99390983581543 19.98718070983887 13.61201000213623 19.98718070983887 10.67519187927246 C 19.98718070983887 7.738373279571533 17.60616683959961 5.356473922729492 14.66846179962158 5.356473922729492 Z M 14.66846179962158 14.22100353240967 C 12.71294593811035 14.22100353240967 11.08187294006348 12.59170246124268 11.08187294006348 10.63618659973145 C 11.08187294006348 8.680671691894531 12.67216968536377 7.090375423431396 14.627685546875 7.090375423431396 C 16.58408737182617 7.090375423431396 18.17349815368652 8.680671691894531 18.17349815368652 10.63618659973145 C 18.17438316345215 12.59170246124268 16.62486457824707 14.22100353240967 14.66846179962158 14.22100353240967 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hpbwjz =
    '<svg viewBox="2.0 2.0 14.0 14.0" ><path transform="translate(-3.0, -3.0)" d="M 19 12 C 19 15.86600017547607 15.86600017547607 19 12 19 C 8.134010314941406 19 5 15.86600017547607 5 12 C 5 8.134010314941406 8.134010314941406 5 12 5 C 15.86600017547607 5 19 8.134010314941406 19 12 Z" fill="none" stroke="#323232" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nemqab =
    '<svg viewBox="16.0 9.0 2.0 1.0" ><path transform="translate(-3.0, -3.0)" d="M 19 12 L 21 12" fill="none" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_qkfey5 =
    '<svg viewBox="0.0 9.0 2.0 1.0" ><path transform="translate(-3.0, -3.0)" d="M 3 12 L 5 12" fill="none" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_vvlf1 =
    '<svg viewBox="9.0 16.0 1.0 2.0" ><path transform="translate(-3.0, -3.0)" d="M 12 19 L 12 21" fill="none" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_memv =
    '<svg viewBox="9.0 0.0 1.0 2.0" ><path transform="translate(-3.0, -3.0)" d="M 12 3 L 12 5" fill="none" stroke="#323232" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_wd2zwr =
    '<svg viewBox="6.0 6.0 6.0 6.0" ><path transform="translate(-3.0, -3.0)" d="M 15 12 C 15 13.65690040588379 13.65690040588379 15 12 15 C 10.34309959411621 15 9 13.65690040588379 9 12 C 9 10.34309959411621 10.34309959411621 9 12 9 C 13.65690040588379 9 15 10.34309959411621 15 12 Z" fill="none" stroke="#323232" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fv4tz =
    '<svg viewBox="69.2 399.1 12.7 16.9" ><path transform="translate(65.17, 399.07)" d="M 10.39350128173828 -0.01099999994039536 C 6.931806564331055 -0.01099999994039536 4 2.937695264816284 4 6.430001258850098 C 4 10.08750343322754 7.398361206054688 13.82786464691162 9.684167861938477 16.45672416687012 C 9.693140029907227 16.4672794342041 10.06258392333984 16.87736320495605 10.51752948760986 16.87736320495605 L 10.55764007568359 16.87736320495605 C 11.01311302185059 16.87736320495605 11.37991905212402 16.4672794342041 11.38889217376709 16.45672416687012 C 13.53378105163574 13.99094772338867 16.66666984558105 9.924418449401855 16.66666984558105 6.430001258850098 C 16.66666984558105 2.937167882919312 14.379807472229 -0.01099983043968678 10.3935022354126 -0.01099983043968678 Z M 10.60513973236084 15.74844837188721 C 10.58666706085205 15.76692008972168 10.5597505569458 15.78750419616699 10.53600025177002 15.80492115020752 C 10.51172256469727 15.78803253173828 10.48533344268799 15.76692008972168 10.46580600738525 15.74844837188721 L 10.18977832794189 15.43072700500488 C 8.022722244262695 12.94489288330078 5.055027961730957 9.54019832611084 5.055027961730957 6.429473876953125 C 5.055027961730957 3.509807348251343 7.49969482421875 1.043500900268555 10.39297294616699 1.043500900268555 C 13.99716854095459 1.043500900268555 15.6105842590332 3.74836277961731 15.6105842590332 6.429473876953125 C 15.6105842590332 8.790751457214355 13.92591762542725 11.92680931091309 10.60461235046387 15.74844837188721 Z M 10.351806640625 3.184695243835449 C 8.603278160095215 3.184695243835449 7.185139656066895 4.602306842803955 7.185139656066895 6.351362705230713 C 7.185139656066895 8.100419044494629 8.603278160095215 9.518030166625977 10.351806640625 9.518030166625977 C 12.10033416748047 9.518030166625977 13.51847457885742 8.09989070892334 13.51847457885742 6.351362705230713 C 13.51847457885742 4.602834701538086 12.10086250305176 3.184695720672607 10.351806640625 3.184695720672607 Z M 10.351806640625 8.46247386932373 C 9.187528610229492 8.46247386932373 8.21641731262207 7.49241828918457 8.21641731262207 6.328139781951904 C 8.21641731262207 5.163862228393555 9.163250923156738 4.217028617858887 10.32752895355225 4.217028617858887 C 11.49233436584473 4.217028617858887 12.43864059448242 5.163862228393555 12.43864059448242 6.328139781951904 C 12.43916797637939 7.49241828918457 11.5166130065918 8.46247386932373 10.351806640625 8.46247386932373 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
