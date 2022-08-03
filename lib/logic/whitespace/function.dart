/// Remove consecutive (2+) spaces from string
String RemoveConsecutiveSpaces(String filename) {
  return filename.replaceAll(RegExp(r'\s+'), " ");
}

/// Trim whitespace from start and end of the string
String TrimWhitespace(String filename) {
  return filename.trim();
}

/// Combine all whitespace cleaning functions
String CleanWhitespace(String filename) {
  filename = RemoveConsecutiveSpaces(filename);
  filename = TrimWhitespace(filename);

  return filename;
}
