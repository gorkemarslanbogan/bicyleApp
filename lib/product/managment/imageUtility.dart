enum imageFormat {jpg,png,}

class imagePath {
  static String jpg(String imagePath) {
    return "assets/images/$imagePath.${imageFormat.jpg.name}";
  }

  static String png(String imagePath) {
    return "assets/images/$imagePath.${imageFormat.png.name}";
  }
}
