import 'package:welcome_flutter/generated/json/base/json_convert_content.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';

UserInfoEntity $UserInfoEntityFromJson(Map<String, dynamic> json) {
	final UserInfoEntity userInfoEntity = UserInfoEntity();
	final String? orgId = jsonConvert.convert<String>(json['OrgId']);
	if (orgId != null) {
		userInfoEntity.orgId = orgId;
	}
	final String? orgName = jsonConvert.convert<String>(json['OrgName']);
	if (orgName != null) {
		userInfoEntity.orgName = orgName;
	}
	final String? orgAddress = jsonConvert.convert<String>(json['OrgAddress']);
	if (orgAddress != null) {
		userInfoEntity.orgAddress = orgAddress;
	}
	final int? sysModel = jsonConvert.convert<int>(json['SysModel']);
	if (sysModel != null) {
		userInfoEntity.sysModel = sysModel;
	}
	final String? id = jsonConvert.convert<String>(json['Id']);
	if (id != null) {
		userInfoEntity.id = id;
	}
	final String? code = jsonConvert.convert<String>(json['Code']);
	if (code != null) {
		userInfoEntity.code = code;
	}
	final String? name = jsonConvert.convert<String>(json['Name']);
	if (name != null) {
		userInfoEntity.name = name;
	}
	final String? phone = jsonConvert.convert<String>(json['Phone']);
	if (phone != null) {
		userInfoEntity.phone = phone;
	}
	final int? postType = jsonConvert.convert<int>(json['PostType']);
	if (postType != null) {
		userInfoEntity.postType = postType;
	}
	final String? postName = jsonConvert.convert<String>(json['PostName']);
	if (postName != null) {
		userInfoEntity.postName = postName;
	}
	final int? sex = jsonConvert.convert<int>(json['Sex']);
	if (sex != null) {
		userInfoEntity.sex = sex;
	}
	final String? busiCard = jsonConvert.convert<String>(json['BusiCard']);
	if (busiCard != null) {
		userInfoEntity.busiCard = busiCard;
	}
	final bool? isTech = jsonConvert.convert<bool>(json['IsTech']);
	if (isTech != null) {
		userInfoEntity.isTech = isTech;
	}
	final dynamic? authList = jsonConvert.convert<dynamic>(json['AuthList']);
	if (authList != null) {
		userInfoEntity.authList = authList;
	}
	final List<String>? authCodeList = jsonConvert.convertListNotNull<String>(json['AuthCodeList']);
	if (authCodeList != null) {
		userInfoEntity.authCodeList = authCodeList;
	}
	final double? freeMoney = jsonConvert.convert<double>(json['FreeMoney']);
	if (freeMoney != null) {
		userInfoEntity.freeMoney = freeMoney;
	}
	final double? disCount = jsonConvert.convert<double>(json['DisCount']);
	if (disCount != null) {
		userInfoEntity.disCount = disCount;
	}
	final double? favourableMoney = jsonConvert.convert<double>(json['FavourableMoney']);
	if (favourableMoney != null) {
		userInfoEntity.favourableMoney = favourableMoney;
	}
	final bool? allowUpClockChooseItem = jsonConvert.convert<bool>(json['AllowUpClockChooseItem']);
	if (allowUpClockChooseItem != null) {
		userInfoEntity.allowUpClockChooseItem = allowUpClockChooseItem;
	}
	final bool? isChangeForLow = jsonConvert.convert<bool>(json['IsChangeForLow']);
	if (isChangeForLow != null) {
		userInfoEntity.isChangeForLow = isChangeForLow;
	}
	final int? changePersonDuration = jsonConvert.convert<int>(json['ChangePersonDuration']);
	if (changePersonDuration != null) {
		userInfoEntity.changePersonDuration = changePersonDuration;
	}
	final int? changeItemDuration = jsonConvert.convert<int>(json['ChangeItemDuration']);
	if (changeItemDuration != null) {
		userInfoEntity.changeItemDuration = changeItemDuration;
	}
	final int? returnDuration = jsonConvert.convert<int>(json['ReturnDuration']);
	if (returnDuration != null) {
		userInfoEntity.returnDuration = returnDuration;
	}
	final List<UserInfoImgList>? imgList = jsonConvert.convertListNotNull<UserInfoImgList>(json['ImgList']);
	if (imgList != null) {
		userInfoEntity.imgList = imgList;
	}
	final dynamic? token = jsonConvert.convert<dynamic>(json['Token']);
	if (token != null) {
		userInfoEntity.token = token;
	}
	final List<UserInfoAllowOrgList>? allowOrgList = jsonConvert.convertListNotNull<UserInfoAllowOrgList>(json['AllowOrgList']);
	if (allowOrgList != null) {
		userInfoEntity.allowOrgList = allowOrgList;
	}
	final String? appReportUrl = jsonConvert.convert<String>(json['AppReportUrl']);
	if (appReportUrl != null) {
		userInfoEntity.appReportUrl = appReportUrl;
	}
	final String? appReportBusiUrl = jsonConvert.convert<String>(json['AppReportBusiUrl']);
	if (appReportBusiUrl != null) {
		userInfoEntity.appReportBusiUrl = appReportBusiUrl;
	}
	final String? nettySocketUrl = jsonConvert.convert<String>(json['NettySocketUrl']);
	if (nettySocketUrl != null) {
		userInfoEntity.nettySocketUrl = nettySocketUrl;
	}
	final bool? allowEditCardSettle = jsonConvert.convert<bool>(json['AllowEditCardSettle']);
	if (allowEditCardSettle != null) {
		userInfoEntity.allowEditCardSettle = allowEditCardSettle;
	}
	final List<String>? authorizeAuthCodeList = jsonConvert.convertListNotNull<String>(json['AuthorizeAuthCodeList']);
	if (authorizeAuthCodeList != null) {
		userInfoEntity.authorizeAuthCodeList = authorizeAuthCodeList;
	}
	final String? orgPhone = jsonConvert.convert<String>(json['OrgPhone']);
	if (orgPhone != null) {
		userInfoEntity.orgPhone = orgPhone;
	}
	final int? personUpClockScene = jsonConvert.convert<int>(json['PersonUpClockScene']);
	if (personUpClockScene != null) {
		userInfoEntity.personUpClockScene = personUpClockScene;
	}
	final String? key1 = jsonConvert.convert<String>(json['Key1']);
	if (key1 != null) {
		userInfoEntity.key1 = key1;
	}
	final String? key2 = jsonConvert.convert<String>(json['Key2']);
	if (key2 != null) {
		userInfoEntity.key2 = key2;
	}
	final String? key3 = jsonConvert.convert<String>(json['Key3']);
	if (key3 != null) {
		userInfoEntity.key3 = key3;
	}
	final String? key4 = jsonConvert.convert<String>(json['Key4']);
	if (key4 != null) {
		userInfoEntity.key4 = key4;
	}
	return userInfoEntity;
}

Map<String, dynamic> $UserInfoEntityToJson(UserInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['OrgId'] = entity.orgId;
	data['OrgName'] = entity.orgName;
	data['OrgAddress'] = entity.orgAddress;
	data['SysModel'] = entity.sysModel;
	data['Id'] = entity.id;
	data['Code'] = entity.code;
	data['Name'] = entity.name;
	data['Phone'] = entity.phone;
	data['PostType'] = entity.postType;
	data['PostName'] = entity.postName;
	data['Sex'] = entity.sex;
	data['BusiCard'] = entity.busiCard;
	data['IsTech'] = entity.isTech;
	data['AuthList'] = entity.authList;
	data['AuthCodeList'] =  entity.authCodeList;
	data['FreeMoney'] = entity.freeMoney;
	data['DisCount'] = entity.disCount;
	data['FavourableMoney'] = entity.favourableMoney;
	data['AllowUpClockChooseItem'] = entity.allowUpClockChooseItem;
	data['IsChangeForLow'] = entity.isChangeForLow;
	data['ChangePersonDuration'] = entity.changePersonDuration;
	data['ChangeItemDuration'] = entity.changeItemDuration;
	data['ReturnDuration'] = entity.returnDuration;
	data['ImgList'] =  entity.imgList.map((v) => v.toJson()).toList();
	data['Token'] = entity.token;
	data['AllowOrgList'] =  entity.allowOrgList.map((v) => v.toJson()).toList();
	data['AppReportUrl'] = entity.appReportUrl;
	data['AppReportBusiUrl'] = entity.appReportBusiUrl;
	data['NettySocketUrl'] = entity.nettySocketUrl;
	data['AllowEditCardSettle'] = entity.allowEditCardSettle;
	data['AuthorizeAuthCodeList'] =  entity.authorizeAuthCodeList;
	data['OrgPhone'] = entity.orgPhone;
	data['PersonUpClockScene'] = entity.personUpClockScene;
	data['Key1'] = entity.key1;
	data['Key2'] = entity.key2;
	data['Key3'] = entity.key3;
	data['Key4'] = entity.key4;
	return data;
}

UserInfoImgList $UserInfoImgListFromJson(Map<String, dynamic> json) {
	final UserInfoImgList userInfoImgList = UserInfoImgList();
	final String? imgUrl = jsonConvert.convert<String>(json['ImgUrl']);
	if (imgUrl != null) {
		userInfoImgList.imgUrl = imgUrl;
	}
	final int? imgType = jsonConvert.convert<int>(json['ImgType']);
	if (imgType != null) {
		userInfoImgList.imgType = imgType;
	}
	return userInfoImgList;
}

Map<String, dynamic> $UserInfoImgListToJson(UserInfoImgList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['ImgUrl'] = entity.imgUrl;
	data['ImgType'] = entity.imgType;
	return data;
}

UserInfoAllowOrgList $UserInfoAllowOrgListFromJson(Map<String, dynamic> json) {
	final UserInfoAllowOrgList userInfoAllowOrgList = UserInfoAllowOrgList();
	final String? personId = jsonConvert.convert<String>(json['PersonId']);
	if (personId != null) {
		userInfoAllowOrgList.personId = personId;
	}
	final String? orgId = jsonConvert.convert<String>(json['OrgId']);
	if (orgId != null) {
		userInfoAllowOrgList.orgId = orgId;
	}
	final String? orgName = jsonConvert.convert<String>(json['OrgName']);
	if (orgName != null) {
		userInfoAllowOrgList.orgName = orgName;
	}
	return userInfoAllowOrgList;
}

Map<String, dynamic> $UserInfoAllowOrgListToJson(UserInfoAllowOrgList entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['PersonId'] = entity.personId;
	data['OrgId'] = entity.orgId;
	data['OrgName'] = entity.orgName;
	return data;
}