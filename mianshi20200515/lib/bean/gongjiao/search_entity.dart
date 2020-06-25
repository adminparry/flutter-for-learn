class SearchEntity {
	SearchResponse response;

	SearchEntity({this.response});

	SearchEntity.fromJson(Map<String, dynamic> json) {
		response = json['response'] != null ? new SearchResponse.fromJson(json['response']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.response != null) {
      data['response'] = this.response.toJson();
    }
		return data;
	}
}

class SearchResponse {
	String mapservice;
	String areaname;
	SearchResponseResultset resultset;

	SearchResponse({this.mapservice, this.areaname, this.resultset});

	SearchResponse.fromJson(Map<String, dynamic> json) {
		mapservice = json['mapservice'];
		areaname = json['areaname'];
		resultset = json['resultset'] != null ? new SearchResponseResultset.fromJson(json['resultset']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['mapservice'] = this.mapservice;
		data['areaname'] = this.areaname;
		if (this.resultset != null) {
      data['resultset'] = this.resultset.toJson();
    }
		return data;
	}
}

class SearchResponseResultset {
	SearchResponseResultsetData data;
	int curpage;
	int pagecount;
	int pagesize;
	int curresult;

	SearchResponseResultset({this.data, this.curpage, this.pagecount, this.pagesize, this.curresult});

	SearchResponseResultset.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new SearchResponseResultsetData.fromJson(json['data']) : null;
		curpage = json['curpage'];
		pagecount = json['pagecount'];
		pagesize = json['pagesize'];
		curresult = json['curresult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['curpage'] = this.curpage;
		data['pagecount'] = this.pagecount;
		data['pagesize'] = this.pagesize;
		data['curresult'] = this.curresult;
		return data;
	}
}

class SearchResponseResultsetData {
	List<SearchResponseResultsetDataFeature> feature;

	SearchResponseResultsetData({this.feature});

	SearchResponseResultsetData.fromJson(Map<String, dynamic> json) {
		if (json['feature'] != null) {
			feature = new List<SearchResponseResultsetDataFeature>();(json['feature'] as List).forEach((v) { feature.add(new SearchResponseResultsetDataFeature.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.feature != null) {
      data['feature'] =  this.feature.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class SearchResponseResultsetDataFeature {
	String vS2eNum;
	String vLineUuid;
	String dataid;
	String vLineName;
	String caption;
	String id;
	String subcategorytxt;

	SearchResponseResultsetDataFeature({this.vS2eNum, this.vLineUuid, this.dataid, this.vLineName, this.caption, this.id, this.subcategorytxt});

	SearchResponseResultsetDataFeature.fromJson(Map<String, dynamic> json) {
		vS2eNum = json['v_s2e_num'];
		vLineUuid = json['v_line_uuid'];
		dataid = json['dataid'];
		vLineName = json['v_line_name'];
		caption = json['caption'];
		id = json['id'];
		subcategorytxt = json['subcategorytxt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['v_s2e_num'] = this.vS2eNum;
		data['v_line_uuid'] = this.vLineUuid;
		data['dataid'] = this.dataid;
		data['v_line_name'] = this.vLineName;
		data['caption'] = this.caption;
		data['id'] = this.id;
		data['subcategorytxt'] = this.subcategorytxt;
		return data;
	}
}
