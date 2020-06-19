class Pincode {
  int status;
  List<Data> data;

  Pincode({this.status, this.data});

  Pincode.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String circleName;
  String deliveryStatus;
  String district;
  String divisionName;
  int id;
  String officeName;
  String pincode;
  String regionName;
  String stateName;
  String taluk;

  Data(
      {this.circleName,
        this.deliveryStatus,
        this.district,
        this.divisionName,
        this.id,
        this.officeName,
        this.pincode,
        this.regionName,
        this.stateName,
        this.taluk});

  Data.fromJson(Map<String, dynamic> json) {
    circleName = json['circle_name'];
    deliveryStatus = json['delivery_status'];
    district = json['district'];
    divisionName = json['division_name'];
    id = json['id'];
    officeName = json['office_name'];
    pincode = json['pincode'];
    regionName = json['region_name'];
    stateName = json['state_name'];
    taluk = json['taluk'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['circle_name'] = this.circleName;
    data['delivery_status'] = this.deliveryStatus;
    data['district'] = this.district;
    data['division_name'] = this.divisionName;
    data['id'] = this.id;
    data['office_name'] = this.officeName;
    data['pincode'] = this.pincode;
    data['region_name'] = this.regionName;
    data['state_name'] = this.stateName;
    data['taluk'] = this.taluk;
    return data;
  }
}
