import 'package:simplify/logic/whitespace/function.dart';
import 'package:test/test.dart';

void main() {
  group("[ Whitespace ]", () {
    /* ------------------------------------ - ----------------------------------- */
    test("Consecutive spaces", () {
      expect(
        RemoveConsecutiveSpaces("  Sample                  string "),
        equals(" Sample string "),
      );
    });

    /* ------------------------------------ - ----------------------------------- */
    test("Whitespace at start and end", () {
      expect(
        TrimWhitespace("  Sample                  string "),
        equals("Sample                  string"),
      );
    });

    /* ------------------------------------ - ----------------------------------- */
    test("Combined whitespace cleaning", () {
      expect(
        CleanWhitespace("  Sample                  string "),
        equals("Sample string"),
      );
    });
  });
}
