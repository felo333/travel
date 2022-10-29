class Student {
  int ?_id;
  String ?_name;
  String ?_address;
  int ?_pass;
  String ?_date;

  Student(this._name, this._address, this._pass, this._date);

  Student.WithId(
      this._id, this._name, this._address, this._pass, this._date);

  String? get date => _date;

  int? get pass => _pass;

  String? get address => _address;

  String? get name => _name;

  int? get id => _id;

  set date(String? value) {
    _date = value;
  }

  set pass(int? value) {
    _pass = value;
  }

  set address(String? value) {
    if (value!.length <= 255) {
      _address = value;
    }
  }

  set name(String? value) {
    if (value!.length <= 255) {
      _name = value;
    }
  }

  Map<String, dynamic> tomap() {
    var map = Map<String, dynamic>();
    map["id"] = this._id;
    map["name"] = this._name;
    map["address"] = this._address;
    map["pass"] = this._pass;
    map["date"] = this._date;
    return map;
  }

  Student.getMap(Map<String, dynamic> map) {
    this._id = map["id"];
    this._name = map["name"];
    this._address = map["address"];
    this._pass = map["pass"];
    this._date = map["date"];
  }
}