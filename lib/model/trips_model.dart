class MyTrip {
  String? tripTittle;
  String? location;
  String? date;
  int? miles;

  MyTrip(this.tripTittle, this.miles, this.date, this.location);

  MyTrip.fromJson(Map<String, dynamic> json) {
    tripTittle = json['tripTittle'];
    location = json['location'];
    date = json['date'];
    miles = json['miles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['tripTittle'] = tripTittle;
    data['location'] = location;
    data['date'] = date;
    data['miles'] = miles;
    return data;
  }
}
