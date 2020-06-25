class StationEntity {
	String msg;
	StationData data;
	String status;

	StationEntity({this.msg, this.data, this.status});

	StationEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		data = json['data'] != null ? new StationData.fromJson(json['data']) : null;
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['msg'] = this.msg;
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['status'] = this.status;
		return data;
	}
}

class StationData {
	StationDataLine line;
	StationDataReverse reverse;

	StationData({this.line, this.reverse});

	StationData.fromJson(Map<String, dynamic> json) {
		line = json['line'] != null ? new StationDataLine.fromJson(json['line']) : null;
		reverse = json['reverse'] != null ? new StationDataReverse.fromJson(json['reverse']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.line != null) {
      data['line'] = this.line.toJson();
    }
		if (this.reverse != null) {
      data['reverse'] = this.reverse.toJson();
    }
		return data;
	}
}

class StationDataLine {
	String vLineXlbh;
	String vLineUuid;
	String vLineEnd;
	String vSsbb;
	String vLineCompany;
	String vWorktime;
	int vSinglePrice;
	String vS2eName;
	String vLineStart;
	List<StationDataLineVStatList> vStatList;
	String vS2eNum;
	int vLineStatnum;
	String vLineDir;
	String vLineName;
	int vLineMeter;
	String vLineId;
	int vPrice;
	String vLineStatus;
	String vPricelist;

	StationDataLine({this.vLineXlbh, this.vLineUuid, this.vLineEnd, this.vSsbb, this.vLineCompany, this.vWorktime, this.vSinglePrice, this.vS2eName, this.vLineStart, this.vStatList, this.vS2eNum, this.vLineStatnum, this.vLineDir, this.vLineName, this.vLineMeter, this.vLineId, this.vPrice, this.vLineStatus, this.vPricelist});

	StationDataLine.fromJson(Map<String, dynamic> json) {
		vLineXlbh = json['v_line_xlbh'];
		vLineUuid = json['v_line_uuid'];
		vLineEnd = json['v_line_end'];
		vSsbb = json['v_ssbb'];
		vLineCompany = json['v_line_company'];
		vWorktime = json['v_worktime'];
		vSinglePrice = json['v_single_price'];
		vS2eName = json['v_s2e_name'];
		vLineStart = json['v_line_start'];
		if (json['v_stat_list'] != null) {
			vStatList = new List<StationDataLineVStatList>();(json['v_stat_list'] as List).forEach((v) { vStatList.add(new StationDataLineVStatList.fromJson(v)); });
		}
		vS2eNum = json['v_s2e_num'];
		vLineStatnum = json['v_line_statnum'];
		vLineDir = json['v_line_dir'];
		vLineName = json['v_line_name'];
		vLineMeter = json['v_line_meter'];
		vLineId = json['v_line_id'];
		vPrice = json['v_price'];
		vLineStatus = json['v_line_status'];
		vPricelist = json['v_pricelist'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['v_line_xlbh'] = this.vLineXlbh;
		data['v_line_uuid'] = this.vLineUuid;
		data['v_line_end'] = this.vLineEnd;
		data['v_ssbb'] = this.vSsbb;
		data['v_line_company'] = this.vLineCompany;
		data['v_worktime'] = this.vWorktime;
		data['v_single_price'] = this.vSinglePrice;
		data['v_s2e_name'] = this.vS2eName;
		data['v_line_start'] = this.vLineStart;
		if (this.vStatList != null) {
      data['v_stat_list'] =  this.vStatList.map((v) => v.toJson()).toList();
    }
		data['v_s2e_num'] = this.vS2eNum;
		data['v_line_statnum'] = this.vLineStatnum;
		data['v_line_dir'] = this.vLineDir;
		data['v_line_name'] = this.vLineName;
		data['v_line_meter'] = this.vLineMeter;
		data['v_line_id'] = this.vLineId;
		data['v_price'] = this.vPrice;
		data['v_line_status'] = this.vLineStatus;
		data['v_pricelist'] = this.vPricelist;
		return data;
	}
}

class StationDataLineVStatList {
	String vStatName;
	int vStatSeq;

	StationDataLineVStatList({this.vStatName, this.vStatSeq});

	StationDataLineVStatList.fromJson(Map<String, dynamic> json) {
		vStatName = json['v_stat_name'];
		vStatSeq = json['v_stat_seq'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['v_stat_name'] = this.vStatName;
		data['v_stat_seq'] = this.vStatSeq;
		return data;
	}
}

class StationDataReverse {
	String vS2eNum;
	String vLineUuid;
	String vLineName;

	StationDataReverse({this.vS2eNum, this.vLineUuid, this.vLineName});

	StationDataReverse.fromJson(Map<String, dynamic> json) {
		vS2eNum = json['v_s2e_num'];
		vLineUuid = json['v_line_uuid'];
		vLineName = json['v_line_name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['v_s2e_num'] = this.vS2eNum;
		data['v_line_uuid'] = this.vLineUuid;
		data['v_line_name'] = this.vLineName;
		return data;
	}
}
