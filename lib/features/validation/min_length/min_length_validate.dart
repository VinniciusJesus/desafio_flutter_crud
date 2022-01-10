class MinLengthValidate {
  bool validate(String txt, int minSize) {
    if (txt.length < minSize) {
      return false;
    }
    return true;
  }
}
