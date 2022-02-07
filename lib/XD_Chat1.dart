import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/XD_Favoriten.dart';

import './XD_Anzeigeanschauen.dart';
import './XD_Chat11.dart';
import './XD_TopKomponente.dart';

class XD_Chat1 extends StatefulWidget {
  @override
  _XDChat1 createState() =>
      new _XDChat1();
}

class _XDChat1
    extends State<XD_Chat1> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: IconButton(
          icon: Image.asset("images/UmmelLogo.png"),
          iconSize: 50,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => XD_Home()));
            //Bestätigen Action
          },
        ),
        backgroundColor: Color(0xffffb420),
        actions: <Widget>[
          IconButton(
            icon: Icon(ummel_icons.favblume_leer),
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => XD_Favoriten()));
              //Bestätigen Action
            },
          ),
        ],
      ),

      body: new InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },

        child: SingleChildScrollView(
          child: Container(
            child: Row(
              children: <Widget>[

                Container(
                    width: 10.0
                ),

                Container(
                  height:1230.0,
                  child:SizedBox(
                    child: Ink(
                      width:40.0,
                      height:40.0,
                      decoration: const ShapeDecoration(
                        color: Color(0xffffb420),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.camera_alt_outlined),
                          color: Colors.white,
                          onPressed:() {}
                      ),
                    ),
                  ),
                ),

                Container(
                    width: 10.0
                ),

                Container(
                  child:SizedBox(
                    height:40.0,
                    width: 270,
                    child: Stack(children:<Widget> [
                      TextFormField(
                        cursorColor: Color(0xffffb420),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: "Schreibe etwas",
                            labelStyle: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20,
                              color: const Color(0x80ffc857),
                              fontWeight: FontWeight.w500,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Colors.black38),
                            )),
                      ),

                    ],
                    ),

                  ),
                ),

                Container(
                    width: 5.0
                ),

                Container(
                  child: IconButton(
                      alignment: Alignment.bottomLeft,
                      iconSize: 35.0,
                      icon: const Icon(Icons.send_rounded),
                      color: Color(0xffffb420),
                      onPressed:() {}
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

const String _svg_6kbc4f =
    '<svg viewBox="0.0 0.0 38.0 38.0" ><path transform="translate(629.61, -197.11)" d="M -591.630126953125 216.1039428710938 C -591.630126953125 226.5922393798828 -600.132568359375 235.0946960449219 -610.6209106445312 235.0946960449219 C -621.1091918945312 235.0946960449219 -629.611572265625 226.5922393798828 -629.611572265625 216.1039428710938 C -629.611572265625 205.6156616210938 -621.1091918945312 197.1132049560547 -610.6209106445312 197.1132049560547 C -600.132568359375 197.1132049560547 -591.630126953125 205.6156616210938 -591.630126953125 216.1039428710938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nwsuo9 =
    '<svg viewBox="0.0 0.0 21.8 16.8" ><path transform="translate(600.81, -209.09)" d="M -591.8822631835938 209.0898742675781 L -587.8724975585938 209.0898742675781 C -586.68603515625 209.0898742675781 -585.7308349609375 209.4761810302734 -585.7308349609375 209.9560546875 L -585.7308349609375 212.1566009521484 C -585.7308349609375 212.6364593505859 -586.68603515625 213.0227661132812 -587.8724975585938 213.0227661132812 L -591.8822631835938 213.0227661132812 C -593.0687255859375 213.0227661132812 -594.0238647460938 212.6364593505859 -594.0238647460938 212.1566009521484 L -594.0238647460938 209.9560546875 C -594.0238647460938 209.4761962890625 -593.0687255859375 209.0898742675781 -591.8822631835938 209.0898742675781 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(603.68, -210.1)" d="M -601.5349731445312 212.4853210449219 L -584.0375366210938 212.4853210449219 C -582.85107421875 212.4853210449219 -581.8958740234375 213.508544921875 -581.8958740234375 214.7795104980469 L -581.8958740234375 224.56494140625 C -581.8958740234375 225.8359069824219 -582.85107421875 226.859130859375 -584.0375366210938 226.859130859375 L -601.5349731445312 226.859130859375 C -602.7213745117188 226.859130859375 -603.6765747070312 225.8359069824219 -603.6765747070312 224.56494140625 L -603.6765747070312 214.7795104980469 C -603.6765747070312 213.508544921875 -602.7213745117188 212.4853210449219 -601.5349731445312 212.4853210449219 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(601.03, -211.38)" d="M -585.5074462890625 221.3629455566406 C -585.5074462890625 223.8798828125 -587.5748291015625 225.9202575683594 -590.125 225.9202575683594 C -592.6751708984375 225.9202575683594 -594.7425537109375 223.8798828125 -594.7425537109375 221.3629760742188 C -594.7425537109375 218.8460388183594 -592.6751708984375 216.8056945800781 -590.125 216.8056945800781 C -587.5748291015625 216.8056945800781 -585.5074462890625 218.8460388183594 -585.5074462890625 221.3629455566406 Z" fill="none" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(596.85, -210.74)" d="M -580.398681640625 214.6572570800781 L -577.7816162109375 214.6572570800781 C -577.6408081054688 214.6572570800781 -577.5274047851562 214.7737426757812 -577.5274047851562 214.9184265136719 L -577.5274047851562 216.0183410644531 C -577.5274047851562 216.1630249023438 -577.6408081054688 216.2794952392578 -577.7816162109375 216.2794952392578 L -580.398681640625 216.2794952392578 C -580.5394287109375 216.2794952392578 -580.65283203125 216.1630249023438 -580.65283203125 216.0183410644531 L -580.65283203125 214.9184265136719 C -580.65283203125 214.7737426757812 -580.5394287109375 214.6572570800781 -580.398681640625 214.6572570800781 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /></svg>';
const String _svg_8uqvlt =
    '<svg viewBox="6.0 549.0 52.0 48.0" ><path transform="translate(6.0, 549.0)" d="M 13.92857074737549 0 L 38.07142639160156 0 C 45.76396560668945 0 52 6.578673362731934 52 14.69387817382812 L 52 33.30612182617188 C 52 41.42132568359375 45.76396560668945 48 38.07142639160156 48 L 13.92857074737549 48 C 6.23603343963623 48 0 41.42132568359375 0 33.30612182617188 L 0 14.69387817382812 C 0 6.578673362731934 6.23603343963623 0 13.92857074737549 0 Z" fill="#ffffff" fill-opacity="0.0" stroke="#707070" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';