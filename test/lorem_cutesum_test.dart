import 'package:flutter_test/flutter_test.dart';

import 'package:lorem_cutesum/lorem_cutesum.dart';

void main() {
  test('displays String with default word count', () {
    List<String> cutesumTenLength = Cutesum.loremCutesum().split(" ");
    expect(cutesumTenLength.length, 10);
  });

  test('displays String with optional word count', () {
    List<String> cutesumTenLength = Cutesum.loremCutesum(words: 25).split(" ");
    expect(cutesumTenLength.length, 25);
  });

  test('displays empty String with optional word count set to 0', () {
    List<String> cutesumTenLength = Cutesum.loremCutesum(words: 0).split(" ");
    expect(cutesumTenLength.length, 1);
    expect(cutesumTenLength[0], "");
  });
}
