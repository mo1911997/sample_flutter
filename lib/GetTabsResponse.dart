class GetTabsResponse {
  String activityName;
  String imageName;
  String activityId;
  String serviceType;
  String bookable;
  String visible;
  String bookableColorString;
  List<SubActivity> subActivity;

  GetTabsResponse(
      {this.activityName,
      this.imageName,
      this.activityId,
      this.serviceType,
      this.bookable,
      this.visible,
      this.bookableColorString,
      this.subActivity});

  GetTabsResponse.fromJson(Map<String, dynamic> json) {
    activityName = json['activity_Name'];
    imageName = json['image_name'];
    activityId = json['activity_Id'];
    serviceType = json['ServiceType'];
    bookable = json['Bookable'];
    visible = json['Visible'];
    bookableColorString = json['BookableColorString'];
    if (json['sub_activity'] != null) {
      subActivity = new List<SubActivity>();
      json['sub_activity'].forEach((v) {
        subActivity.add(new SubActivity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity_Name'] = this.activityName;
    data['image_name'] = this.imageName;
    data['activity_Id'] = this.activityId;
    data['ServiceType'] = this.serviceType;
    data['Bookable'] = this.bookable;
    data['Visible'] = this.visible;
    data['BookableColorString'] = this.bookableColorString;
    if (this.subActivity != null) {
      data['sub_activity'] = this.subActivity.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubActivity {
  String subActivityName;
  String imgName;
  String subActivityId;
  List<Events> events;

  SubActivity(
      {this.subActivityName, this.imgName, this.subActivityId, this.events});

  SubActivity.fromJson(Map<String, dynamic> json) {
    subActivityName = json['sub_activity_name'];
    imgName = json['img_name'];
    subActivityId = json['sub_activity_id'];
    if (json['events'] != null) {
      events = new List<Events>();
      json['events'].forEach((v) {
        events.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_activity_name'] = this.subActivityName;
    data['img_name'] = this.imgName;
    data['sub_activity_id'] = this.subActivityId;
    if (this.events != null) {
      data['events'] = this.events.map((v) => v.toJson()).toList();
    }
    return data;
  }
}	

class Events {
  String eventName;
  String imgName;
  String eventId;

  Events({this.eventName, this.imgName, this.eventId});

  Events.fromJson(Map<String, dynamic> json) {
    eventName = json['event_name'];
    imgName = json['img_name'];
    eventId = json['event_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['event_name'] = this.eventName;
    data['img_name'] = this.imgName;
    data['event_id'] = this.eventId;
    return data;
  }
}