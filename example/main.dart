// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:chroma_dart/chroma_dart.dart';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

  chroma.hex("#ff0000");
  chroma.hex("red");
  chroma.hex("rgb(255, 0, 0)");

  chroma.rgb(255, 0, 0);
  chroma.hsl(0, 1, 0.5);
  chroma.hsv(120, 0.5, 0.5);
  chroma.lab(53.24, 80.09, 67.20);
  chroma.lch(53.24, 104.55, 40);
  chroma.gl(1, 0, 0);

  chroma.interpolate('white', 'black', 0);  // #ffffff
  chroma.interpolate('white', 'black', 1); // #000000
  chroma.interpolate('white', 'black', 0.5);  // #7f7f7f
  chroma.interpolate('white', 'black', 0.5, 'hsv');  // #808080
  chroma.interpolate('white', 'black', 0.5, 'lab');  // #777777

  print("==chroma.scale function==");

  ChromaScale scale = chroma.scale();
  print(scale(0));
  print(scale(1));

  print(chroma.scale(['yellow', 'red', 'black'])(0.5).name());

  print(":[domain]");
  print(chroma.scale(['yellow', '008ae5']).domain([0,1000]).domain());

  print(":[out]");
  var scale3 = chroma.scale(['lightyellow', 'navy']).out('hex');
  print(scale3(0));

  print(":[mode]");
  var scale4 = chroma.scale(['yellow', 'navy']);
  print(scale4.mode('lab')(0.5));
  print(scale4.mode('hsl')(0.5));

  print("==chroma function==");

  print(chroma('hotpink'));
  print(chroma('#ff3399'));
  print(chroma('F39'));
  print(chroma(0xff3399));

  print("==chroma static methods==");

  print(":[hsl]");
  print(chroma.hsl(330, 1, 0.6));

  print(":[lch]");
  print(chroma.lch(80, 40, 130));

  print(":[hcl]");
  print(chroma.hcl(130, 40, 80));

  print(":[cmyk]");
  print(chroma.cmyk(0.2, 0.8, 0, 0));

  print(":[gl]");
  print(chroma.gl(0.6, 0, 0.8));
  print(chroma.gl(0.6, 0, 0.8, 0.5));

  print(":[temperature]");
  print(chroma.temperature(2000));
  print(chroma.temperature(3500).css());

  print(":[mix]");
  print(chroma.mix('red', 'blue'));
  print(chroma.mix('red', 'blue', 0.25));
  print(chroma.mix('red', 'blue', 0.5, 'rgb'));

  print(":[blend]");
  print(chroma.blend('4CBBFC', 'EEEE22', 'multiply'));
  print(chroma.blend('4CBBFC', 'EEEE22', 'darken'));
  print(chroma.blend('4CBBFC', 'EEEE22', 'darken').css());

  print(":[random]");
  print(chroma.random());
  print(chroma.random());

  print(":[contrast]");
  print(chroma.contrast('pink', 'hotpink'));
  print(chroma.contrast('pink', 'purple'));

  print("==Color properties==");

  print(":[alpha]");
  print(chroma('red').alpha(0.5));
  print(chroma('rgba(255,0,0,0.35)').alpha());

  print(":[darken]");
  print(chroma('hotpink').darken());
  print(chroma('hotpink').darken(2));

  print(":[brighten]");
  print(chroma('hotpink').brighten());

  print(":[saturate]");
  print(chroma('slategray').saturate());
  print(chroma('slategray').saturate(2));

  print(":[desaturate]");
  print(chroma('hotpink').desaturate());
  print(chroma('hotpink').desaturate(2));
  print(chroma('hotpink').desaturate(3));

  print(":[set]");
  print(chroma('skyblue').set('hsl.h', 0));
  print(chroma('orangered').set('lab.l', '*0.5'));
  print(chroma('orangered').set('lab.l', '*0.5').css());

  print(":[get]");
  print(chroma('orangered').get('lab.l'));
  print(chroma('orangered').get('hsl.l'));
  print(chroma('orangered').get('rgb.g'));

  print(":[luminance]");
  print((chroma('aquamarine').luminance()));
  print(chroma('aquamarine').luminance(0.5).rgb());
  print(chroma('aquamarine').luminance(0.5, 'lab'));
  print(chroma('aquamarine').luminance(0.5, 'hsl'));

  print(":[hex]");
  print(chroma('orange').hex());

  print(":[name]");
  print(chroma('#ffa500').name());
  print(chroma('#ffa505').name());

  print(":[css]");
  print(chroma('teal').css());
  print(chroma('teal').alpha(0.5).css());
  print(chroma('teal').css('hsl'));

  print(":[rgb]");
  print(chroma('orange').rgb());

  print(":[hsl]");
  print(chroma('orange').hsl());
  print(chroma('white').hsl());

  print(":[hsv]");
  print(chroma('orange').hsv());
  print(chroma('white').hsv());

  print(":[hsi]");
  print(chroma('orange').hsi());
  print(chroma('white').hsi());

  print(":[lab]");
  print(chroma('orange').lab());

  print(":[lch]");
  print(chroma('skyblue').lch());

  print(":[hcl]");
  print(chroma('skyblue').hcl());

  print(":[gl]");
  print(chroma('33cc00').gl());

  print(":[Temperature]");
  print(chroma('#ff3300').temperature());
  print(chroma('#ff8a13').temperature());
}


