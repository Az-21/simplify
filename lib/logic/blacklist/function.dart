/// Remove a substring from a string
String RemoveWordFromString(String filename, String word) {
  const String replacement = " "; // Space character
  return filename.replaceAll(word, replacement);
}

/// Remove a list of blacklisted words
String RemoveWordsFromString(String filename, List<String> words) {
  for (String word in words) {
    filename = RemoveWordFromString(filename, word);
  }

  return filename;
}
