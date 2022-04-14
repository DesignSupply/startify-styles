import 'dart:io';
import 'dart:convert';
import 'package:sass/sass.dart' as sass;
import 'package:source_maps/source_maps.dart';

void main(List<String> source) {
  var outputStyle = sass.OutputStyle.compressed;
  var result = sass.compileToResult(source[0], style: outputStyle, sourceMap: true, charset: false);
  result.sourceMap.targetUrl = 'css/main.min.css';
  result.sourceMap.sourceRoot = source[0];
  new File('css/main.min.css').writeAsStringSync(result.css + '/*# sourceMappingURL=main.min.css.map */');
  new File('css/main.min.css.map').writeAsStringSync(json.encode(result.sourceMap));
}
