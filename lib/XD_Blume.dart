import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XD_Blume extends StatelessWidget {
  XD_Blume({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 1.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 1.0),
          child: SizedBox(
            width: 54.0,
            height: 48.0,
            child:
                // Adobe XD layer: 'Favoriten' (group)
                Stack(
              children: <Widget>[
                SizedBox(
                  width: 54.0,
                  height: 48.0,
                  child:
                      // Adobe XD layer: 'layer4' (group)
                      Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 54.0,
                        height: 48.0,
                        child: SvgPicture.string(
                          _svg_qrwp1u,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(20.8, 17.2),
                  child: SizedBox(
                    width: 14.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'layer5' (group)
                        Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 14.0,
                          height: 14.0,
                          child: SvgPicture.string(
                            _svg_5jtk3m,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_qrwp1u =
    '<svg viewBox="0.0 0.0 54.0 48.3" ><path transform="matrix(0.88358, 0.46827, -0.46827, 0.88358, 7.99, 5.59)" d="M 21.72314453125 8.526988983154297 C 21.72314453125 13.23630905151367 16.86026000976562 17.05397415161133 10.861572265625 17.05397415161133 C 4.862899780273438 17.05397415161133 0 13.23630905151367 1.52587890625e-05 8.526981353759766 C 1.52587890625e-05 3.817665100097656 4.862899780273438 7.62939453125e-06 10.861572265625 3.814697265625e-06 C 16.86024475097656 3.814697265625e-06 21.72314453125 3.817653656005859 21.72314453125 8.526981353759766 Z" fill="#ffffff" stroke="none" stroke-width="1.0583300590515137" stroke-linecap="round" stroke-linejoin="round" /><path transform="matrix(-0.33875, 0.94088, -0.94088, -0.33875, 41.33, 5.78)" d="M 21.72313690185547 8.526962280273438 C 21.72312164306641 13.23628234863281 16.86024475097656 17.05393981933594 10.86156463623047 17.05393981933594 C 4.862892150878906 17.05393981933594 0 13.23628234863281 0 8.526962280273438 C 0 3.817657470703125 4.862876892089844 0 10.86154937744141 0 C 16.86023712158203 1.52587890625e-05 21.72311401367188 3.817657470703125 21.72312164306641 8.5269775390625 Z" fill="#ffffff" stroke="none" stroke-width="1.0583300590515137" stroke-linecap="round" stroke-linejoin="round" /><path transform="matrix(-0.99815, 0.06074, -0.06074, -0.99815, 54.0, 32.73)" d="M 21.72315979003906 8.5269775390625 C 21.72314453125 13.236328125 16.86024475097656 17.05398559570312 10.86155700683594 17.05398559570312 C 4.862884521484375 17.05398559570312 -1.52587890625e-05 13.23631286621094 0 8.5269775390625 C 0 3.817672729492188 4.862884521484375 0 10.86155700683594 0 C 16.86024475097656 0 21.72312927246094 3.817672729492188 21.72312927246094 8.526992797851562 Z" fill="#ffffff" stroke="none" stroke-width="1.0583300590515137" stroke-linecap="round" stroke-linejoin="round" /><path transform="matrix(-0.61792, 0.78624, -0.78624, -0.61792, 31.21, 31.22)" d="M 21.72313690185547 8.5269775390625 C 21.72313690185547 13.23629760742188 16.86024475097656 17.053955078125 10.86156845092773 17.053955078125 C 4.862888336181641 17.053955078125 0 13.23629760742188 0 8.5269775390625 C 0 3.817657470703125 4.862888336181641 0 10.86156845092773 0 C 16.86024475097656 0 21.72313690185547 3.817657470703125 21.72313690185547 8.5269775390625 Z" fill="#ffffff" stroke="none" stroke-width="1.0583300590515137" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-76.55, -85.28)" d="M 116.3645553588867 132.2488250732422 C 112.625373840332 134.7059173583984 107.0569381713867 132.8366394042969 103.9271469116211 128.0736694335938 C 100.7973403930664 123.3107147216797 101.2913589477539 117.4577331542969 105.0305709838867 115.0006713867188 C 108.7697372436523 112.5435791015625 114.3381576538086 114.412841796875 117.4679489135742 119.17578125 C 120.597770690918 123.9387664794922 120.1037521362305 129.791748046875 116.3645401000977 132.2488250732422 Z" fill="#ffffff" stroke="none" stroke-width="1.0054999589920044" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_5jtk3m =
    '<svg viewBox="0.0 0.0 13.7 13.7" ><path transform="translate(-98.36, -105.12)" d="M 112.0790328979492 111.9775314331055 C 112.0790328979492 115.7646408081055 109.0089645385742 118.8347091674805 105.2218399047852 118.8347091674805 C 101.4347152709961 118.8347091674805 98.36465454101562 115.7646408081055 98.36465454101562 111.9775314331055 C 98.36465454101562 108.1903610229492 101.4347457885742 105.1202926635742 105.2218704223633 105.1203079223633 C 109.0089645385742 105.1202926635742 112.0790328979492 108.1903762817383 112.0790328979492 111.9775009155273 Z" fill="#ffc857" stroke="none" stroke-width="1.0583300590515137" stroke-linecap="round" stroke-linejoin="round" /></svg>';
