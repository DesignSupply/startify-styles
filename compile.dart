import 'dart:io';
import 'dart:convert';
import 'package:sass/sass.dart' as sass;
import 'package:source_maps/source_maps.dart';

void main(List<String> arguments) {
  var outputStyle = sass.OutputStyle.compressed;
  var result = sass.compileToResult(arguments[0], style: outputStyle, sourceMap: true, charset: false);
  result.sourceMap.targetUrl = arguments[1];
  result.sourceMap.sourceRoot = arguments[0];
  new File(arguments[1]).writeAsStringSync(result.css + '/*# sourceMappingURL=main.min.css.map */');
  new File(arguments[1] + '.map').writeAsStringSync(json.encode(result.sourceMap));
}
