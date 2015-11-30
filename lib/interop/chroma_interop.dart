library chroma.interop;

import 'package:js/js.dart';

@JS("chroma")
class ChromaClass {
  external call([p1,p2,p3,p4,p5]);

  /// Returns a [Color] from a hex code or css ChromaColor. Alias: Chroma.css()
  external ChromaColor hex(String ChromaColor);

  /// Returns a [Color] from a hex code or css ChromaColor. Alias: Chroma.hex()
  external ChromaColor css(String ChromaColor);

  /// Returns a [Color] from a hexadecimal numbers (in fact, just any number between 0 and 16777215)
  external ChromaColor number(num ChromaColor);


  /// Creates a [Color] instance from a rgb ChromaColor space.
  external ChromaColor rgb(num red, num green, num blue, [num alpha]);

  /// Creates a [Color] instance from a hsl ChromaColor space.
  external ChromaColor hsl(num hue, num saturation, num lightness, [num alpha]);

  /// Creates a [Color] instance from a hsv ChromaColor space.
  external ChromaColor hsv(num hue, num saturation, num value, [num alpha]);

  /// Creates a [Color] instance from a lab ChromaColor space.
  external ChromaColor lab(num lightness, num a, num b, [num alpha]);

  /// Creates a [Color] instance from a lch ChromaColor space. L: Lightness, c: chroma (0-1), h: hue (0-1).
  external ChromaColor lch(num lightness, num chroma, num hue, [num alpha]);

  /// Creates a [Color] instance from a hcl ChromaColor space.
  external ChromaColor hcl(num hue, num chroma, num lightness, [num alpha]);


  /// Creates a [Color] instance from a gl ChromaColor space. GL is a variant of RGB(A), with the only difference that the components are normalized to the range of 0..1
  external ChromaColor gl(num red, num green, num blue, [num alpha]);

  /// Creates a [Color] instance from a cmyk ChromaColor space. cyan, magenta, yellow, black, each between 0 and 1.
  external ChromaColor cmyk(num cyan, num magenta, num yellow, num black, [num alpha]);




  /// Creates a [Color] instance from Kelvin temperature scale. The effective temperature range goes from 0 to about 20000 Kelvin:
  external ChromaColor temperature(num value);

  /// Generates a random [Color]
  external ChromaColor random();

  /// Computes the WCAG contrast ratio between two ChromaColors. A minimum contrast of 4.5:1 is recommended to ensure that text is still readable against a background ChromaColor.
  external num contrast(color1, ChromaColor2);



  /// Interpolates between two other ChromaColors in a given mode. [factor] should be a value between 0 and 1, The default ChromaColor space is rgb
  external ChromaColor interpolate(color1, ChromaColor2, num factor, [String ChromaColorSpace]);

  /// Mix between two other ChromaColors in a given mode. [factor] should be a value between 0 and 1, The default ChromaColor space is rgb
  /// Alias for Chroma.interpolate
  external ChromaColor mix(color1, ChromaColor2, [num factor, String ChromaColorSpace]);

  /// Blends two ChromaColors using RGB channel-wise blend functions. Valid blend modes are multiply, darken, lighten, screen, overlay, burn, and dogde.
  external ChromaColor blend(color1, ChromaColor2, [String mode]);

  /// A ChromaColor scale, maps numeric values to a ChromaColor palette. The default scale has the domain 0..1 and goes from white to black.Generates a random [Color]
  external ChromaScale  scale([/* List | String  */ ChromaColors]);

}

@JS("chroma.scale")
abstract class ChromaScale {
  external ChromaColor call(num t);
  external dynamic /* Scale | List<num> */ get domain;
  external ChromaScale out(String mode);
  external ChromaScale mode(String mode);
}

@JS()
@anonymous
abstract class ChromaColor {
  /// Returns [Color] if parameters are passed otherwise returns a [num] with value of the alpha.
  /// Alpha should be a value between 0 and 1
  external dynamic /* ChromaClass | num */ alpha([num value]);
  external ChromaClass darken([num value]);
  external ChromaClass brighten([num value]);
  external ChromaClass saturate([num value]);
  external ChromaClass desaturate([num value]);
  external ChromaClass set(String channel, /* String | num */ value);
  external num get(String channel);

  /// Returns [Color] if parameters are passed otherwise returns a [num] with value of the luminance
  external /* ChromaClass | num */ luminance([num value, String ChromaClassSpace]);
  external String hex();
  external String name();
  external String css([String mode]);
  external List<num> rgb();
  external List<num> hsl();
  external List<num> hsv();
  external List<num> hsi();
  external List<num> lab();
  external List<num> lch();
  external List<num> hcl();
  external List<num> gl();
  external num temperature();
}

@JS()
external ChromaClass get chroma;