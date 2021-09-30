abstract class Util {
  static List<String> abecedario() {
    List<String> abc = [];
    for (int i = 65; i <= 90; i++) {
      abc.add(String.fromCharCode(i).toLowerCase());
    }

    return abc;
  }
}
