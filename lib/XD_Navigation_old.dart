import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XD_Home.dart';
import 'package:adobe_xd/page_link.dart';
import './XD_Nachrichten.dart';
import './XD_Anzeigeaufgeben.dart';
import './XD_Profil.dart';
import './XD_Suche.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XD_Navigation extends StatelessWidget {
  XD_Navigation({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(95.0, 6.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Home - Icon' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: SvgPicture.string(
                    _svg_jea9ez,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'Navigation' (shape)
              Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(size: 1.0, start: 0.0),
          child: SvgPicture.string(
            _svg_ovbk3p,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Transform.translate(
          offset: Offset(25.0, 6.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Home - Icon' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Home(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: SvgPicture.string(
                      _svg_jea9ez,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(235.0, 7.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Nachrichten - Icon' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Nachrichten(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: SvgPicture.string(
                      _svg_i8nxm9,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(95.0, 6.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Suchen - Icon' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: SvgPicture.string(
                    _svg_1hcrqn,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(165.0, 6.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Anzeige schalten - …' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Anzeigeaufgeben(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: SvgPicture.string(
                      _svg_7zgpwk,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(305.0, 6.0),
          child: SizedBox(
            width: 45.0,
            height: 45.0,
            child:
                // Adobe XD layer: 'Profil - Icon' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Profil(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 45.0,
                    height: 45.0,
                    child: SvgPicture.string(
                      _svg_ymm2fb,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(37.6, 17.5),
          child: SizedBox(
            width: 20.0,
            height: 22.0,
            child:
                // Adobe XD layer: 'layer1' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                  height: 22.0,
                  child: SvgPicture.string(
                    _svg_b9hx0v,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(103.6, 17.5),
          child: SizedBox(
            width: 28.0,
            height: 22.0,
            child:
                // Adobe XD layer: 'layer1' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Suche(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 28.0,
                    height: 22.0,
                    child:
                        // Adobe XD layer: 'g3702' (group)
                        Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 28.0,
                          height: 22.0,
                          child: SvgPicture.string(
                            _svg_najb1w,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(244.5, 19.5),
          child: SizedBox(
            width: 26.0,
            height: 20.0,
            child:
                // Adobe XD layer: 'layer1' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 26.0,
                  height: 20.0,
                  child: SvgPicture.string(
                    _svg_55tu3v,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(314.8, 17.5),
          child: SizedBox(
            width: 25.0,
            height: 22.0,
            child:
                // Adobe XD layer: 'layer1' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 25.0,
                  height: 22.0,
                  child: SvgPicture.string(
                    _svg_mn1z4n,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 30.0, middle: 0.5),
          Pin(size: 30.0, middle: 0.5192),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              border: Border.all(width: 2.0, color: const Color(0xffffb420)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(180.0, 21.0),
          child: SizedBox(
            width: 15.0,
            height: 15.0,
            child: SvgPicture.string(
              _svg_68m23v,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_jea9ez =
    '<svg viewBox="0.0 0.0 45.0 45.0" ><path transform="translate(-82.52, -142.16)" d="M 105.0034103393555 142.1620178222656 C 117.3922271728516 142.15185546875 127.4583587646484 152.1585845947266 127.5215301513672 164.5472412109375 C 127.5847015380859 176.9359283447266 117.6210403442383 187.0448455810547 105.2327270507812 187.1609497070312 C 92.84443664550781 187.2770385742188 82.69306945800781 177.3567047119141 82.52397155761719 164.9690399169922 C 82.35493469238281 152.5814056396484 92.23171997070312 142.3877563476562 104.618537902832 142.1656341552734" fill="#ffffff" stroke="#ffffff" stroke-width="0.793749988079071" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_ovbk3p =
    '<svg viewBox="0.0 0.0 375.0 1.0" ><path  d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i8nxm9 =
    '<svg viewBox="0.0 1.0 45.0 45.0" ><path transform="translate(-219.0, -148.81)" d="M 241.4854431152344 149.8150024414062 C 253.8742370605469 149.8048553466797 263.9403686523438 159.8116455078125 264.0035095214844 172.2003021240234 C 264.066650390625 184.5889739990234 254.1029968261719 194.6978454589844 241.7146911621094 194.81396484375 C 229.3264007568359 194.9300842285156 219.1750030517578 185.0097198486328 219.0059356689453 172.6220092773438 C 218.8368682861328 160.2343597412109 228.7136993408203 150.0406799316406 241.1005249023438 149.8186492919922" fill="#ffffff" stroke="#ffffff" stroke-width="0.7877799868583679" stroke-linecap="square" stroke-linejoin="round" /></svg>';
const String _svg_1hcrqn =
    '<svg viewBox="0.0 0.0 45.0 45.0" ><path transform="translate(-82.56, -142.22)" d="M 105.0464553833008 142.2209930419922 C 117.4352722167969 142.2108306884766 127.5014038085938 152.2176208496094 127.5645370483398 164.6062927246094 C 127.6276779174805 176.9949645996094 117.6640319824219 187.1038513183594 105.275749206543 187.2199554443359 C 92.88743591308594 187.3360748291016 82.73603820800781 177.4157409667969 82.56697082519531 165.0280151367188 C 82.39790344238281 152.6403503417969 92.27470397949219 142.4466857910156 104.6615219116211 142.224609375" fill="none" stroke="#ffffff" stroke-width="0.7897999882698059" stroke-miterlimit="4" stroke-linecap="square" /></svg>';
const String _svg_7zgpwk =
    '<svg viewBox="2.0 0.0 45.0 45.0" ><path transform="translate(-2.91, -147.97)" d="M 49.90649032592773 170.4700012207031 C 49.90649032592773 182.8966064453125 39.83271789550781 192.9701385498047 27.40619277954102 192.9700012207031 C 14.98013114929199 192.9700012207031 4.906537055969238 182.8965759277344 4.906490325927734 170.4703369140625 C 4.906490325927734 158.0432739257812 14.98041915893555 147.9696960449219 27.40704727172852 147.9700012207031 C 39.83274459838867 147.9700012207031 49.90629959106445 158.0432739257812 49.90649032592773 170.4694061279297 Z" fill="#ffffff" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_ymm2fb =
    '<svg viewBox="0.0 0.0 45.0 45.0" ><path transform="translate(49.72, -108.64)" d="M -4.715396404266357 131.1415710449219 C -4.715395450592041 143.5685882568359 -14.78923225402832 153.6422424316406 -27.21578407287598 153.6420135498047 C -39.64186477661133 153.6420135498047 -49.7154541015625 143.568359375 -49.71539688110352 131.1419067382812 C -49.71539688110352 118.7155838012695 -39.64181900024414 108.6419830322266 -27.2154369354248 108.6419982910156 C -14.78910446166992 108.6420059204102 -4.715588092803955 118.7153778076172 -4.715396881103516 131.1416625976562 Z" fill="#ffffff" stroke="#ffffff" stroke-width="0.7935699820518494" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_b9hx0v =
    '<svg viewBox="0.0 0.0 19.7 22.0" ><path transform="translate(66.87, 45.3)" d="M -56.70363616943359 -23.29784202575684 L -47.50267028808594 -23.29784202575684 C -47.29817962646484 -23.2978343963623 -47.13239288330078 -23.46361351013184 -47.13239288330078 -23.66811561584473 L -47.13239669799805 -35.22443008422852 C -47.13239669799805 -35.49082565307617 -47.23784255981445 -35.74639511108398 -47.42569351196289 -35.93528747558594 L -56.61305618286133 -45.173583984375 C -56.77670669555664 -45.3381462097168 -57.04263687133789 -45.33937835693359 -57.20780181884766 -45.17631149291992 L -66.60348510742188 -35.90047073364258 C -66.77207183837891 -35.73401641845703 -66.86697387695312 -35.5069694519043 -66.86697387695312 -35.27005004882812 L -66.86697387695312 -23.59383010864258 C -66.86697387695312 -23.43034934997559 -66.73444366455078 -23.29781532287598 -66.57095336914062 -23.29781532287598 L -57.29570007324219 -23.29781532287598 L -56.70363616943359 -23.29784202575684 Z" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_najb1w =
    '<svg viewBox="0.0 0.0 27.8 22.0" ><path transform="translate(140.14, -5.03)" d="M -123.3042221069336 6.81540584564209 C -118.2857284545898 10.10874843597412 -116.8871765136719 16.84683609008789 -120.1804885864258 21.86537170410156 C -123.4738311767578 26.88393783569336 -130.2119750976562 28.2824878692627 -135.2305297851562 24.98911285400391 C -140.2490997314453 21.69575691223145 -141.6476745605469 14.95761108398438 -138.3542785644531 9.939065933227539 C -135.0609130859375 4.920556545257568 -128.3228759765625 3.522017002105713 -123.3043441772461 6.81533145904541 Z" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(141.31, -4.04)" d="M -121.3558502197266 20.87393379211426 C -118.731201171875 22.59632110595703 -116.1067504882812 24.31858253479004 -113.4825134277344 26.04071617126465" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_55tu3v =
    '<svg viewBox="0.0 0.0 26.0 20.0" ><path transform="translate(182.89, 22.69)" d="M -182.1068878173828 -22.68959045410156 L -157.6793518066406 -22.68959045410156 C -157.2428436279297 -22.68959045410156 -156.8914794921875 -22.30183410644531 -156.8914794921875 -21.8201789855957 L -156.8914794921875 -3.559063911437988 C -156.8914794921875 -3.077410697937012 -157.2428436279297 -2.689651489257812 -157.6793518066406 -2.689651489257812 L -182.1068878173828 -2.689651489257812 C -182.5433654785156 -2.689651489257812 -182.8947601318359 -3.077409267425537 -182.8947601318359 -3.559063911437988 L -182.8947601318359 -21.82023620605469 C -182.8947601318359 -22.3018913269043 -182.5433654785156 -22.68965148925781 -182.1068878173828 -22.68965148925781 Z" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(182.89, 22.71)" d="M -182.6580047607422 -22.4623966217041 L -169.8913879394531 -12.71132946014404 L -157.0881195068359 -22.41991233825684" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_mn1z4n =
    '<svg viewBox="0.0 0.0 25.4 22.0" ><path transform="translate(69.07, 41.33)" d="M -51.40018081665039 -36.36274337768555 C -51.40018081665039 -33.6215934753418 -53.62231063842773 -31.39945793151855 -56.36345672607422 -31.39945793151855 C -59.10458755493164 -31.39945793151855 -61.32672500610352 -33.62158966064453 -61.32672500610352 -36.36273574829102 C -61.32672500610352 -39.10387420654297 -59.10458755493164 -41.32601165771484 -56.36344909667969 -41.32601165771484 C -53.62231063842773 -41.32601165771484 -51.40018081665039 -39.10387420654297 -51.40018081665039 -36.36274337768555 Z" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(69.39, 40.79)" d="M -68.37325286865234 -27.6890983581543 L -44.98551177978516 -27.6890983581543 C -44.42217636108398 -27.6890983581543 -43.96865844726562 -27.23557662963867 -43.96865844726562 -26.6722412109375 L -43.96865844726562 -19.80845260620117 C -43.96865844726562 -19.24511337280273 -44.42217636108398 -18.79159545898438 -44.98551177978516 -18.79159545898438 L -68.37325286865234 -18.79159545898438 C -68.93659973144531 -18.79159545898438 -69.39010620117188 -19.24511337280273 -69.39010620117188 -19.80845260620117 L -69.39010620117188 -26.6722412109375 C -69.39010620117188 -27.23557662963867 -68.93659210205078 -27.68909645080566 -68.37325286865234 -27.68909645080566 Z" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_68m23v =
    '<svg viewBox="180.0 21.0 15.0 15.0" ><path transform="translate(275.73, -23.78)" d="M -88.23380279541016 44.7784423828125 L -88.23380279541016 59.7784423828125" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(269.18, -17.23)" d="M -74.184814453125 45.72919845581055 L -89.184814453125 45.72919845581055" fill="none" stroke="#ffb420" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
