
import 'dart:convert';

import 'package:bcyleapp/model/trips_model.dart';
import 'package:bcyleapp/product/managment/cache/shared_managment.dart';

class SharedListManager{

 SharedManager? _manager;
 SharedListManager? _listManager;

SharedListManager(this._manager);

  Future<void> sharedListInit() async {
     _manager = SharedManager();
    await _manager?.init();
    _listManager = SharedListManager(_manager);
  }

Future<void> SaveList(List<MyTrip> list) async {
  final item = list.map((e) => jsonEncode(e.toJson())).toList();
  await _manager?.SaveStringList(Sharedkey.tripModel, item);
}

List<MyTrip>? getStringList() {
  final item = _manager?.getStringList(Sharedkey.tripModel);
  if(item != null){
    return item.map((e) {
      final trip = jsonDecode(e);
      if (trip is Map<String, dynamic>) {
       return MyTrip.fromJson(trip); 
      }
      return MyTrip("tripTittle", 0, "date", "location");
    }).toList();
  }
  return null;
}



}







