// To parse this JSON data, do
//
//     final calendarModel = calendarModelFromJson(jsonString);

import 'dart:convert';

CalendarModel calendarModelFromJson(String str) =>
    CalendarModel.fromJson(json.decode(str));

class CalendarModel {
  String odataContext;
  List<Value> value;
  String odataNextLink;

  CalendarModel({
    required this.odataContext,
    required this.value,
    required this.odataNextLink,
  });

  factory CalendarModel.fromJson(Map<String, dynamic> json) => CalendarModel(
        odataContext: json["@odata.context"],
        value: List<Value>.from(json["value"].map((x) => Value.fromJson(x))),
        odataNextLink: json["@odata.nextLink"],
      );
}

class Value {
  String odataEtag;
  String id;
  String subject;
  String bodyPreview;
  Body body;
  End start;
  End end;
  Location location;
  List<Attendee> attendees;
  Organizer organizer;

  Value({
    required this.odataEtag,
    required this.id,
    required this.subject,
    required this.bodyPreview,
    required this.body,
    required this.start,
    required this.end,
    required this.location,
    required this.attendees,
    required this.organizer,
  });

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        odataEtag: json["@odata.etag"],
        id: json["id"],
        subject: json["subject"],
        bodyPreview: json["bodyPreview"],
        body: Body.fromJson(json["body"]),
        start: End.fromJson(json["start"]),
        end: End.fromJson(json["end"]),
        location: Location.fromJson(json["location"]),
        attendees: List<Attendee>.from(
            json["attendees"].map((x) => Attendee.fromJson(x))),
        organizer: Organizer.fromJson(json["organizer"]),
      );

  @override
  String toString() => this.subject;
}

class Attendee {
  String type;
  Status status;
  EmailAddress emailAddress;

  Attendee({
    required this.type,
    required this.status,
    required this.emailAddress,
  });

  factory Attendee.fromJson(Map<String, dynamic> json) => Attendee(
        type: json["type"],
        status: Status.fromJson(json["status"]),
        emailAddress: EmailAddress.fromJson(json["emailAddress"]),
      );
}

class EmailAddress {
  String name;
  String address;

  EmailAddress({
    required this.name,
    required this.address,
  });

  factory EmailAddress.fromJson(Map<String, dynamic> json) => EmailAddress(
        name: json["name"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
      };
}

class Status {
  String response;
  DateTime time;

  Status({
    required this.response,
    required this.time,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        response: json["response"],
        time: DateTime.parse(json["time"]),
      );
}

class Body {
  String contentType;
  String content;

  Body({
    required this.contentType,
    required this.content,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        contentType: json["contentType"],
        content: json["content"],
      );
}

class End {
  DateTime dateTime;
  String timeZone;

  End({
    required this.dateTime,
    required this.timeZone,
  });

  factory End.fromJson(Map<String, dynamic> json) => End(
        dateTime: DateTime.parse(json["dateTime"]),
        timeZone: json["timeZone"],
      );
}

class Location {
  String displayName;
  String locationType;
  String uniqueId;
  String uniqueIdType;

  Location({
    required this.displayName,
    required this.locationType,
    required this.uniqueId,
    required this.uniqueIdType,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        displayName: json["displayName"],
        locationType: json["locationType"],
        uniqueId: json["uniqueId"],
        uniqueIdType: json["uniqueIdType"],
      );
}

class Organizer {
  EmailAddress emailAddress;

  Organizer({
    required this.emailAddress,
  });

  factory Organizer.fromJson(Map<String, dynamic> json) => Organizer(
        emailAddress: EmailAddress.fromJson(json["emailAddress"]),
      );

  Map<String, dynamic> toJson() => {
        "emailAddress": emailAddress.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
