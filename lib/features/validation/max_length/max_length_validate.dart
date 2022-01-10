class MaxLengthValidate {
  bool validate(String txt, int maxSize) {
    if (txt.length > maxSize) {
      return false;
    }
    return true;
  }
}
