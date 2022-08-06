

class LottiePathManagment {
  late final LottiePathManagment _LottiePath;
  LottiePathManagment._(){
    this._LottiePath = LottiePathManagment._();
  }
  static final LottiePathManagment instance = LottiePathManagment._();
  
   String _lottiePath() {
    return "assets/lottie/${LottiePathName.drive_Bike.name}.json";
  }
  String get path => _lottiePath();

}

enum LottiePathName { drive_Bike, deneme }