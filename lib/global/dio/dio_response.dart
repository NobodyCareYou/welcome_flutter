import 'package:welcome_flutter/generated/json/base/json_convert_content.dart';
import 'package:welcome_flutter/generated/json/base/json_field.dart';

class DioResponse implements JsonSerializable{
  late int Code;
  late String Msg;
  // late dynamic? RetData;
  late Map<String,dynamic>? RetData;

  DioResponse(this.Code, this.Msg, this.RetData);

  bool get success => Code == 200;

  // @override
  // String toString() {
  //   return 'DioResponse{RetData: $RetData, Code: $Code, Msg: $Msg}';
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Code'] = this.Code;
    data['Msg'] = this.Msg;
    data['RetData'] = this.RetData;
    return data;
  }

  DioResponse.fromJson(Map<String, dynamic> json) {
    Code = json['Code'];
    Msg = json['Msg'];
    RetData = json['RetData'];
  }

}


