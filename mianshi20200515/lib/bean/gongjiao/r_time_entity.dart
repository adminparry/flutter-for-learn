class RTimeEntity {
	String msg;
	RTimeData data;
	String status;

	RTimeEntity({this.msg, this.data, this.status});

	RTimeEntity.fromJson(Map<String, dynamic> json) {
		msg = json['msg'];
		data = json['data'] != null ? new RTimeData.fromJson(json['data']) : null;
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

class RTimeData {
	String vLineSeq;
	String vLineXlbh;
	List<Null> vBusListBefore;
	String vS2eName;
	String vSignmsg;
	List<Null> vBusListAfter;
	String vLineStation;
	String vS2eNum;
	RTimeDataRtime rTime;
	String vScontent;
	String vStatus;
	String vMid;
	String vLineDir;
	String vLineName;
	String vLineId;
	int vBusNum;
	List<RTimeDataBuslist> busList;
	bool vZdxsflag;

	RTimeData({this.vLineSeq, this.vLineXlbh, this.vBusListBefore, this.vS2eName, this.vSignmsg, this.vBusListAfter, this.vLineStation, this.vS2eNum, this.rTime, this.vScontent, this.vStatus, this.vMid, this.vLineDir, this.vLineName, this.vLineId, this.vBusNum, this.busList, this.vZdxsflag});

	RTimeData.fromJson(Map<String, dynamic> json) {
		vLineSeq = json['v_line_seq'];
		vLineXlbh = json['v_line_xlbh'];
		if (json['v_bus_list_before'] != null) {
			vBusListBefore = new List<Null>();
		}
		vS2eName = json['v_s2e_name'];
		vSignmsg = json['v_signMsg'];
		if (json['v_bus_list_after'] != null) {
			vBusListAfter = new List<Null>();
		}
		vLineStation = json['v_line_station'];
		vS2eNum = json['v_s2e_num'];
		rTime = json['rTime'] != null ? new RTimeDataRtime.fromJson(json['rTime']) : null;
		vScontent = json['v_scontent'];
		vStatus = json['v_status'];
		vMid = json['v_mid'];
		vLineDir = json['v_line_dir'];
		vLineName = json['v_line_name'];
		vLineId = json['v_line_id'];
		vBusNum = json['v_bus_num'];
		if (json['busList'] != null) {
			busList = new List<RTimeDataBuslist>();(json['busList'] as List).forEach((v) { busList.add(new RTimeDataBuslist.fromJson(v)); });
		}
		vZdxsflag = json['v_zdxsflag'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['v_line_seq'] = this.vLineSeq;
		data['v_line_xlbh'] = this.vLineXlbh;
		if (this.vBusListBefore != null) {
      data['v_bus_list_before'] =  [];
    }
		data['v_s2e_name'] = this.vS2eName;
		data['v_signMsg'] = this.vSignmsg;
		if (this.vBusListAfter != null) {
      data['v_bus_list_after'] =  [];
    }
		data['v_line_station'] = this.vLineStation;
		data['v_s2e_num'] = this.vS2eNum;
		if (this.rTime != null) {
      data['rTime'] = this.rTime.toJson();
    }
		data['v_scontent'] = this.vScontent;
		data['v_status'] = this.vStatus;
		data['v_mid'] = this.vMid;
		data['v_line_dir'] = this.vLineDir;
		data['v_line_name'] = this.vLineName;
		data['v_line_id'] = this.vLineId;
		data['v_bus_num'] = this.vBusNum;
		if (this.busList != null) {
      data['busList'] =  this.busList.map((v) => v.toJson()).toList();
    }
		data['v_zdxsflag'] = this.vZdxsflag;
		return data;
	}
}

class RTimeDataRtime {
	String busTimeType;
	String busSNum;
	int busTime;
	String busDis;
	String rTips;

	RTimeDataRtime({this.busTimeType, this.busSNum, this.busTime, this.busDis, this.rTips});

	RTimeDataRtime.fromJson(Map<String, dynamic> json) {
		busTimeType = json['busTimeType'];
		busSNum = json['busSNum'];
		busTime = json['busTime'];
		busDis = json['busDis'];
		rTips = json['rTips'];


	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['busTimeType'] = this.busTimeType;
		data['busSNum'] = this.busSNum;
		data['busTime'] = this.busTime;
		data['busDis'] = this.busDis;
		data['rTips'] = this.rTips;

		return data;
	}
}

class RTimeDataBuslist {
	num top;
	String xClass;

	RTimeDataBuslist({this.top, this.xClass});

	RTimeDataBuslist.fromJson(Map<String, dynamic> json) {
		top = json['top'];
		xClass = json['class'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['top'] = this.top;
		data['class'] = this.xClass;
		return data;
	}
}
