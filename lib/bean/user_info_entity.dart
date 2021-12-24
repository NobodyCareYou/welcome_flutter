import 'dart:convert';
import 'package:welcome_flutter/generated/json/base/json_field.dart';
import 'package:welcome_flutter/generated/json/user_info_entity.g.dart';

@JsonSerializable()
class UserInfoEntity {

	@JSONField(name: "OrgId")
	late String orgId;
	@JSONField(name: "OrgName")
	late String orgName;
	@JSONField(name: "OrgAddress")
	late String orgAddress;
	@JSONField(name: "SysModel")
	late int sysModel;
	@JSONField(name: "Id")
	late String id;
	@JSONField(name: "Code")
	late String code;
	@JSONField(name: "Name")
	late String name;
	@JSONField(name: "Phone")
	late String phone;
	@JSONField(name: "PostType")
	late int postType;
	@JSONField(name: "PostName")
	late String postName;
	@JSONField(name: "Sex")
	late int sex;
	@JSONField(name: "BusiCard")
	late String busiCard;
	@JSONField(name: "IsTech")
	late bool isTech;
	@JSONField(name: "AuthList")
	late dynamic authList;
	@JSONField(name: "AuthCodeList")
	late List<String> authCodeList;
	@JSONField(name: "FreeMoney")
	late double freeMoney;
	@JSONField(name: "DisCount")
	late double disCount;
	@JSONField(name: "FavourableMoney")
	late double favourableMoney;
	@JSONField(name: "AllowUpClockChooseItem")
	late bool allowUpClockChooseItem;
	@JSONField(name: "IsChangeForLow")
	late bool isChangeForLow;
	@JSONField(name: "ChangePersonDuration")
	late int changePersonDuration;
	@JSONField(name: "ChangeItemDuration")
	late int changeItemDuration;
	@JSONField(name: "ReturnDuration")
	late int returnDuration;
	@JSONField(name: "ImgList")
	late List<UserInfoImgList> imgList;
	@JSONField(name: "Token")
	late dynamic token;
	@JSONField(name: "AllowOrgList")
	late List<UserInfoAllowOrgList> allowOrgList;
	@JSONField(name: "AppReportUrl")
	late String appReportUrl;
	@JSONField(name: "AppReportBusiUrl")
	late String appReportBusiUrl;
	@JSONField(name: "NettySocketUrl")
	late String nettySocketUrl;
	@JSONField(name: "AllowEditCardSettle")
	late bool allowEditCardSettle;
	@JSONField(name: "AuthorizeAuthCodeList")
	late List<String> authorizeAuthCodeList;
	@JSONField(name: "OrgPhone")
	late String orgPhone;
	@JSONField(name: "PersonUpClockScene")
	late int personUpClockScene;
	@JSONField(name: "Key1")
	late String key1;
	@JSONField(name: "Key2")
	late String key2;
	@JSONField(name: "Key3")
	late String key3;
	@JSONField(name: "Key4")
	late String key4;
  
  UserInfoEntity();

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) => $UserInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserInfoImgList {

	@JSONField(name: "ImgUrl")
	late String imgUrl;
	@JSONField(name: "ImgType")
	late int imgType;
  
  UserInfoImgList();

  factory UserInfoImgList.fromJson(Map<String, dynamic> json) => $UserInfoImgListFromJson(json);

  Map<String, dynamic> toJson() => $UserInfoImgListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserInfoAllowOrgList {

	@JSONField(name: "PersonId")
	late String personId;
	@JSONField(name: "OrgId")
	late String orgId;
	@JSONField(name: "OrgName")
	late String orgName;
  
  UserInfoAllowOrgList();

  factory UserInfoAllowOrgList.fromJson(Map<String, dynamic> json) => $UserInfoAllowOrgListFromJson(json);

  Map<String, dynamic> toJson() => $UserInfoAllowOrgListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}