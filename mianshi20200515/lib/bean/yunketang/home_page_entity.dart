class HomePageEntity {
	HomePageResult result;
	int code;
	String message;
	dynamic uuid;

	HomePageEntity({this.result, this.code, this.message, this.uuid});

	HomePageEntity.fromJson(Map<String, dynamic> json) {
		result = json['result'] != null ? new HomePageResult.fromJson(json['result']) : null;
		code = json['code'];
		message = json['message'];
		uuid = json['uuid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.result != null) {
      data['result'] = this.result.toJson();
    }
		data['code'] = this.code;
		data['message'] = this.message;
		data['uuid'] = this.uuid;
		return data;
	}
}

class HomePageResult {
	dynamic infoDtoList;
	List<HomePageResultFocusdtolist> focusDtoList;
	List<HomePageResultSectiondtolist> sectionDtoList;
	List<Null> generalDtoList;
	List<HomePageResultIcondtolist> iconDtoList;

	HomePageResult({this.infoDtoList, this.focusDtoList, this.sectionDtoList, this.generalDtoList, this.iconDtoList});

	HomePageResult.fromJson(Map<String, dynamic> json) {
		infoDtoList = json['infoDtoList'];
		if (json['focusDtoList'] != null) {
			focusDtoList = new List<HomePageResultFocusdtolist>();(json['focusDtoList'] as List).forEach((v) { focusDtoList.add(new HomePageResultFocusdtolist.fromJson(v)); });
		}
		if (json['sectionDtoList'] != null) {
			sectionDtoList = new List<HomePageResultSectiondtolist>();(json['sectionDtoList'] as List).forEach((v) { sectionDtoList.add(new HomePageResultSectiondtolist.fromJson(v)); });
		}
		if (json['generalDtoList'] != null) {
			generalDtoList = new List<Null>();
		}
		if (json['iconDtoList'] != null) {
			iconDtoList = new List<HomePageResultIcondtolist>();(json['iconDtoList'] as List).forEach((v) { iconDtoList.add(new HomePageResultIcondtolist.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['infoDtoList'] = this.infoDtoList;
		if (this.focusDtoList != null) {
      data['focusDtoList'] =  this.focusDtoList.map((v) => v.toJson()).toList();
    }
		if (this.sectionDtoList != null) {
      data['sectionDtoList'] =  this.sectionDtoList.map((v) => v.toJson()).toList();
    }
		if (this.generalDtoList != null) {
      data['generalDtoList'] =  [];
    }
		if (this.iconDtoList != null) {
      data['iconDtoList'] =  this.iconDtoList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class HomePageResultFocusdtolist {
	dynamic courseCardVo;
	String targetTo;
	int weight;
	int targetType;
	dynamic remark;
	dynamic photoStyle;
	int platform;
	dynamic categoryVo;
	String photoUrl;
	String name;
	int onlineTime;
	int offlineTime;
	dynamic id;
	dynamic targetUrl;

	HomePageResultFocusdtolist({this.courseCardVo, this.targetTo, this.weight, this.targetType, this.remark, this.photoStyle, this.platform, this.categoryVo, this.photoUrl, this.name, this.onlineTime, this.offlineTime, this.id, this.targetUrl});

	HomePageResultFocusdtolist.fromJson(Map<String, dynamic> json) {
		courseCardVo = json['courseCardVo'];
		targetTo = json['targetTo'];
		weight = json['weight'];
		targetType = json['targetType'];
		remark = json['remark'];
		photoStyle = json['photoStyle'];
		platform = json['platform'];
		categoryVo = json['categoryVo'];
		photoUrl = json['photoUrl'];
		name = json['name'];
		onlineTime = json['onlineTime'];
		offlineTime = json['offlineTime'];
		id = json['id'];
		targetUrl = json['targetUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['courseCardVo'] = this.courseCardVo;
		data['targetTo'] = this.targetTo;
		data['weight'] = this.weight;
		data['targetType'] = this.targetType;
		data['remark'] = this.remark;
		data['photoStyle'] = this.photoStyle;
		data['platform'] = this.platform;
		data['categoryVo'] = this.categoryVo;
		data['photoUrl'] = this.photoUrl;
		data['name'] = this.name;
		data['onlineTime'] = this.onlineTime;
		data['offlineTime'] = this.offlineTime;
		data['id'] = this.id;
		data['targetUrl'] = this.targetUrl;
		return data;
	}
}

class HomePageResultSectiondtolist {
	String sectionName;
	int sectionIndex;
	List<HomePageResultSectiondtolistElemantdtolist> elementDtoList;
	String sectionTemplate;
	bool sectionVisible;
	dynamic wordLinkDto;
	String sectionTitleImage;
	bool priceVisible;

	HomePageResultSectiondtolist({this.sectionName, this.sectionIndex, this.elementDtoList, this.sectionTemplate, this.sectionVisible, this.wordLinkDto, this.sectionTitleImage, this.priceVisible});

	HomePageResultSectiondtolist.fromJson(Map<String, dynamic> json) {
		sectionName = json['sectionName'];
		sectionIndex = json['sectionIndex'];
		if (json['elementDtoList'] != null) {
			elementDtoList = new List<HomePageResultSectiondtolistElemantdtolist>();(json['elementDtoList'] as List).forEach((v) { elementDtoList.add(new HomePageResultSectiondtolistElemantdtolist.fromJson(v)); });
		}
		sectionTemplate = json['sectionTemplate'];
		sectionVisible = json['sectionVisible'];
		wordLinkDto = json['wordLinkDto'];
		sectionTitleImage = json['sectionTitleImage'];
		priceVisible = json['priceVisible'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sectionName'] = this.sectionName;
		data['sectionIndex'] = this.sectionIndex;
		if (this.elementDtoList != null) {
      data['elementDtoList'] =  this.elementDtoList.map((v) => v.toJson()).toList();
    }
		data['sectionTemplate'] = this.sectionTemplate;
		data['sectionVisible'] = this.sectionVisible;
		data['wordLinkDto'] = this.wordLinkDto;
		data['sectionTitleImage'] = this.sectionTitleImage;
		data['priceVisible'] = this.priceVisible;
		return data;
	}
}

class HomePageResultSectiondtolistElemantdtolist {
	dynamic courseCardVo;
	String targetTo;
	int weight;
	int targetType;
	dynamic remark;
	int photoStyle;
	dynamic platform;
	dynamic categoryVo;
	String photoUrl;
	String name;
	dynamic onlineTime;
	dynamic offlineTime;
	dynamic id;
	dynamic targetUrl;

	HomePageResultSectiondtolistElemantdtolist({this.courseCardVo, this.targetTo, this.weight, this.targetType, this.remark, this.photoStyle, this.platform, this.categoryVo, this.photoUrl, this.name, this.onlineTime, this.offlineTime, this.id, this.targetUrl});

	HomePageResultSectiondtolistElemantdtolist.fromJson(Map<String, dynamic> json) {
		courseCardVo = json['courseCardVo'];
		targetTo = json['targetTo'];
		weight = json['weight'];
		targetType = json['targetType'];
		remark = json['remark'];
		photoStyle = json['photoStyle'];
		platform = json['platform'];
		categoryVo = json['categoryVo'];
		photoUrl = json['photoUrl'];
		name = json['name'];
		onlineTime = json['onlineTime'];
		offlineTime = json['offlineTime'];
		id = json['id'];
		targetUrl = json['targetUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['courseCardVo'] = this.courseCardVo;
		data['targetTo'] = this.targetTo;
		data['weight'] = this.weight;
		data['targetType'] = this.targetType;
		data['remark'] = this.remark;
		data['photoStyle'] = this.photoStyle;
		data['platform'] = this.platform;
		data['categoryVo'] = this.categoryVo;
		data['photoUrl'] = this.photoUrl;
		data['name'] = this.name;
		data['onlineTime'] = this.onlineTime;
		data['offlineTime'] = this.offlineTime;
		data['id'] = this.id;
		data['targetUrl'] = this.targetUrl;
		return data;
	}
}

class HomePageResultIcondtolist {
	dynamic courseCardVo;
	String targetTo;
	int weight;
	int targetType;
	dynamic remark;
	dynamic photoStyle;
	dynamic platform;
	HomePageResultIcondtolistCategoryvo categoryVo;
	String photoUrl;
	String name;
	dynamic onlineTime;
	dynamic offlineTime;
	dynamic id;
	dynamic targetUrl;

	HomePageResultIcondtolist({this.courseCardVo, this.targetTo, this.weight, this.targetType, this.remark, this.photoStyle, this.platform, this.categoryVo, this.photoUrl, this.name, this.onlineTime, this.offlineTime, this.id, this.targetUrl});

	HomePageResultIcondtolist.fromJson(Map<String, dynamic> json) {
		courseCardVo = json['courseCardVo'];
		targetTo = json['targetTo'];
		weight = json['weight'];
		targetType = json['targetType'];
		remark = json['remark'];
		photoStyle = json['photoStyle'];
		platform = json['platform'];
		categoryVo = json['categoryVo'] != null ? new HomePageResultIcondtolistCategoryvo.fromJson(json['categoryVo']) : null;
		photoUrl = json['photoUrl'];
		name = json['name'];
		onlineTime = json['onlineTime'];
		offlineTime = json['offlineTime'];
		id = json['id'];
		targetUrl = json['targetUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['courseCardVo'] = this.courseCardVo;
		data['targetTo'] = this.targetTo;
		data['weight'] = this.weight;
		data['targetType'] = this.targetType;
		data['remark'] = this.remark;
		data['photoStyle'] = this.photoStyle;
		data['platform'] = this.platform;
		if (this.categoryVo != null) {
      data['categoryVo'] = this.categoryVo.toJson();
    }
		data['photoUrl'] = this.photoUrl;
		data['name'] = this.name;
		data['onlineTime'] = this.onlineTime;
		data['offlineTime'] = this.offlineTime;
		data['id'] = this.id;
		data['targetUrl'] = this.targetUrl;
		return data;
	}
}

class HomePageResultIcondtolistCategoryvo {
	dynamic imgUrl;
	dynamic parentName;
	int isExists;
	List<Null> children;
	dynamic level;
	String name;
	dynamic description;
	int id;
	dynamic bigImgUrl;
	dynamic targetUrl;
	int parentId;

	HomePageResultIcondtolistCategoryvo({this.imgUrl, this.parentName, this.isExists, this.children, this.level, this.name, this.description, this.id, this.bigImgUrl, this.targetUrl, this.parentId});

	HomePageResultIcondtolistCategoryvo.fromJson(Map<String, dynamic> json) {
		imgUrl = json['imgUrl'];
		parentName = json['parentName'];
		isExists = json['isExists'];
		if (json['children'] != null) {
			children = new List<Null>();
		}
		level = json['level'];
		name = json['name'];
		description = json['description'];
		id = json['id'];
		bigImgUrl = json['bigImgUrl'];
		targetUrl = json['targetUrl'];
		parentId = json['parentId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imgUrl'] = this.imgUrl;
		data['parentName'] = this.parentName;
		data['isExists'] = this.isExists;
		if (this.children != null) {
      data['children'] =  [];
    }
		data['level'] = this.level;
		data['name'] = this.name;
		data['description'] = this.description;
		data['id'] = this.id;
		data['bigImgUrl'] = this.bigImgUrl;
		data['targetUrl'] = this.targetUrl;
		data['parentId'] = this.parentId;
		return data;
	}
}
