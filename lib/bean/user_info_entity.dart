import 'package:welcome_flutter/generated/json/base/json_convert_content.dart';
import 'package:welcome_flutter/generated/json/base/json_field.dart';

class UserInfoEntity with JsonConvert<UserInfoEntity> {
	@JSONField(name: "Code")
	late int code;
	@JSONField(name: "Msg")
	late String msg;
	@JSONField(name: "Exception")
	dynamic exception;
	@JSONField(name: "RetData")
	late UserInfoRetData retData;
}

class UserInfoRetData with JsonConvert<UserInfoRetData> {
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
	dynamic authList;
	@JSONField(name: "AuthCodeList")
	late List<String> authCodeList;
	@JSONField(name: "FreeMoney")
	late int freeMoney;
	@JSONField(name: "DisCount")
	late int disCount;
	@JSONField(name: "FavourableMoney")
	late int favourableMoney;
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
	late List<UserInfoRetDataImgList> imgList;
	@JSONField(name: "Token")
	dynamic token;
	@JSONField(name: "AllowOrgList")
	late List<UserInfoRetDataAllowOrgList> allowOrgList;
	@JSONField(name: "AppReportUrl")
	late String appReportUrl;
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
}

class UserInfoRetDataImgList with JsonConvert<UserInfoRetDataImgList> {
	@JSONField(name: "ImgUrl")
	late String imgUrl;
	@JSONField(name: "ImgType")
	late int imgType;
}

class UserInfoRetDataAllowOrgList with JsonConvert<UserInfoRetDataAllowOrgList> {
	@JSONField(name: "PersonId")
	late String personId;
	@JSONField(name: "OrgId")
	late String orgId;
	@JSONField(name: "OrgName")
	late String orgName;
}
