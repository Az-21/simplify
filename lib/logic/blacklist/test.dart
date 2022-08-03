import 'package:simplify/logic/blacklist/function.dart';
import 'package:test/test.dart';

void main() {
  group("[ Blacklist ]", () {
    /* ------------------------------------ - ----------------------------------- */
    test("Remove character", () {
      expect(
        RemoveWordFromString("Sample-string", "-"),
        equals("Sample string"),
      );
    });

    /* ------------------------------------ - ----------------------------------- */
    test("Remove substring", () {
      expect(
        RemoveWordFromString("Sample-string-HEVC", "HEVC"),
        equals("Sample-string- "),
      );
    });

    /* ------------------------------------ - ----------------------------------- */
    test("Remove list of characters and substrings", () {
      expect(
        RemoveWordsFromString("S.ample-string_HEVC", ["-", ".", "_", "HEVC"]),
        equals("S ample string  "),
      );
    });
  });
}
