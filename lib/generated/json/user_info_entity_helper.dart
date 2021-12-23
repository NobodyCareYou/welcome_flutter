import 'package:welcome_flutter/bean/user_info_entity.dart';

userInfoEntityFromJson(UserInfoEntity data, Map<String, dynamic> json) {
	if (json['Code'] != null) {
		data.code = json['Code'] is String
				? int.tryParse(json['Code'])
				: json['Code'].toInt();
	}
	if (json['Msg'] != null) {
		data.msg = json['Msg'].toString();
	}
	if (json['Exception'] != null) {
		data.exception = json['Exception'];
	}
	if (json['RetData'] != null) {
		data.retData = UserInfoRetData().fromJson(json['RetData']);
	}
	return data;
}

Map<String, dynamic> userInfoEntityToJson(UserInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Code'] = entity.code;
	data['Msg'] = entity.msg;
	data['Exception'] = entity.exception;
	data['RetData'] = entity.retData.toJson();
	return data;
}

userInfoRetDataFromJson(UserInfoRetData data, Map<String, dynamic> json) {
	if (json['OrgId'] != null) {
		data.orgId = json['OrgId'].toString();
	}
	if (json['OrgName'] != null) {
		data.orgName = json['OrgName'].toString();
	}
	if (json['OrgAddress'] != null) {
		data.orgAddress = json['OrgAddress'].toString();
	}
	if (json['SysModel'] != null) {
		data.sysModel = json['SysModel'] is String
				? int.tryParse(json['SysModel'])
				: json['SysModel'].toInt();
	}
	if (json['Id'] != null) {
		data.id = json['Id'].toString();
	}
	if (json['Code'] != null) {
		data.code = json['Code'].toString();
	}
	if (json['Name'] != null) {
		data.name = json['Name'].toString();
	}
	if (json['Phone'] != null) {
		data.phone = json['Phone'].toString();
	}
	if (json['PostType'] != null) {
		data.postType = json['PostType'] is String
				? int.tryParse(json['PostType'])
				: json['PostType'].toInt();
	}
	if (json['PostName'] != null) {
		data.postName = json['PostName'].toString();
	}
	if (json['Sex'] != null) {
		data.sex = json['Sex'] is String
				? int.tryParse(json['Sex'])
				: json['Sex'].toInt();
	}
	if (json['BusiCard'] != null) {
		data.busiCard = json['BusiCard'].toString();
	}
	if (json['IsTech'] != null) {
		data.isTech = json['IsTech'];
	}
	if (json['AuthList'] != null) {
		data.authList = json['AuthList'];
	}
	if (json['AuthCodeList'] != null) {
		data.authCodeList = (json['AuthCodeList'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['FreeMoney'] != null) {
		data.freeMoney = json['FreeMoney'] is String
				? int.tryParse(json['FreeMoney'])
				: json['FreeMoney'].toInt();
	}
	if (json['DisCount'] != null) {
		data.disCount = json['DisCount'] is String
				? int.tryParse(json['DisCount'])
				: json['DisCount'].toInt();
	}
	if (json['FavourableMoney'] != null) {
		data.favourableMoney = json['FavourableMoney'] is String
				? int.tryParse(json['FavourableMoney'])
				: json['FavourableMoney'].toInt();
	}
	if (json['AllowUpClockChooseItem'] != null) {
		data.allowUpClockChooseItem = json['AllowUpClockChooseItem'];
	}
	if (json['IsChangeForLow'] != null) {
		data.isChangeForLow = json['IsChangeForLow'];
	}
	if (json['ChangePersonDuration'] != null) {
		data.changePersonDuration = json['ChangePersonDuration'] is String
				? int.tryParse(json['ChangePersonDuration'])
				: json['ChangePersonDuration'].toInt();
	}
	if (json['ChangeItemDuration'] != null) {
		data.changeItemDuration = json['ChangeItemDuration'] is String
				? int.tryParse(json['ChangeItemDuration'])
				: json['ChangeItemDuration'].toInt();
	}
	if (json['ReturnDuration'] != null) {
		data.returnDuration = json['ReturnDuration'] is String
				? int.tryParse(json['ReturnDuration'])
				: json['ReturnDuration'].toInt();
	}
	if (json['ImgList'] != null) {
		data.imgList = (json['ImgList'] as List).map((v) => UserInfoRetDataImgList().fromJson(v)).toList();
	}
	if (json['Token'] != null) {
		data.token = json['Token'];
	}
	if (json['AllowOrgList'] != null) {
		data.allowOrgList = (json['AllowOrgList'] as List).map((v) => UserInfoRetDataAllowOrgList().fromJson(v)).toList();
	}
	if (json['AppReportUrl'] != null) {
		data.appReportUrl = json['AppReportUrl'].toString();
	}
	if (json['NettySocketUrl'] != null) {
		data.nettySocketUrl = json['NettySocketUrl'].toString();
	}
	if (json['AllowEditCardSettle'] != null) {
		data.allowEditCardSettle = json['AllowEditCardSettle'];
	}
	if (json['AuthorizeAuthCodeList'] != null) {
		data.authorizeAuthCodeList = (json['AuthorizeAuthCodeList'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['OrgPhone'] != null) {
		data.orgPhone = json['OrgPhone'].toString();
	}
	if (json['PersonUpClockScene'] != null) {
		data.personUpClockScene = json['PersonUpClockScene'] is String
				? int.tryParse(json['PersonUpClockScene'])
				: json['PersonUpClockScene'].toInt();
	}
	if (json['Key1'] != null) {
		data.key1 = json['Key1'].toString();
	}
	if (json['Key2'] != null) {
		data.key2 = json['Key2'].toString();
	}
	if (json['Key3'] != null) {
		data.key3 = json['Key3'].toString();
	}
	if (json['Key4'] != null) {
		data.key4 = json['Key4'].toString();
	}
	return data;
}

Map<String, dynamic> userInfoRetDataToJson(UserInfoRetData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
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
	data['AuthCodeList'] = entity.authCodeList;
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
	data['NettySocketUrl'] = entity.nettySocketUrl;
	data['AllowEditCardSettle'] = entity.allowEditCardSettle;
	data['AuthorizeAuthCodeList'] = entity.authorizeAuthCodeList;
	data['OrgPhone'] = entity.orgPhone;
	data['PersonUpClockScene'] = entity.personUpClockScene;
	data['Key1'] = entity.key1;
	data['Key2'] = entity.key2;
	data['Key3'] = entity.key3;
	data['Key4'] = entity.key4;
	return data;
}

userInfoRetDataImgListFromJson(UserInfoRetDataImgList data, Map<String, dynamic> json) {
	if (json['ImgUrl'] != null) {
		data.imgUrl = json['ImgUrl'].toString();
	}
	if (json['ImgType'] != null) {
		data.imgType = json['ImgType'] is String
				? int.tryParse(json['ImgType'])
				: json['ImgType'].toInt();
	}
	return data;
}

Map<String, dynamic> userInfoRetDataImgListToJson(UserInfoRetDataImgList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ImgUrl'] = entity.imgUrl;
	data['ImgType'] = entity.imgType;
	return data;
}

userInfoRetDataAllowOrgListFromJson(UserInfoRetDataAllowOrgList data, Map<String, dynamic> json) {
	if (json['PersonId'] != null) {
		data.personId = json['PersonId'].toString();
	}
	if (json['OrgId'] != null) {
		data.orgId = json['OrgId'].toString();
	}
	if (json['OrgName'] != null) {
		data.orgName = json['OrgName'].toString();
	}
	return data;
}

Map<String, dynamic> userInfoRetDataAllowOrgListToJson(UserInfoRetDataAllowOrgList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['PersonId'] = entity.personId;
	data['OrgId'] = entity.orgId;
	data['OrgName'] = entity.orgName;
	return data;
}