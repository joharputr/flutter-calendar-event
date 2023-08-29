import 'package:calendar2/CalenderModel.dart';
import 'package:flutter/material.dart';
class CalendarViewModel extends ChangeNotifier {
  CalendarModel? calendarModel;
  DateTime? startDay;
  Map<String, List<int>> startDayList = {
    // DateTime.now(): [0],
    // DateTime.parse("2023-07-15 00:00:00.000Z") : [9],
    // DateTime.now().subtract(Duration(days: 1)): [2]
  };

  List<Value> valueTemp = [];

  Map<String, dynamic> data = {
    "@odata.context":
        "https://graph.microsoft.com/v1.0a#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/events(subject,body,bodyPreview,organizer,attendees,start,end,location)",
    "value": [
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEd5/kNQ==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=",
        "subject": "New Product Regulations Touchpoint",
        "bodyPreview":
            "New Product Regulations Strategy Online Touchpoint MeetingYou're receiving this message because you're a member of the Engineering group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View g",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>New Product Regulations Strategy Online Touchpoint Meeting<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Engineering</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-03T17:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2014-11-03T17:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Conf Room Rainier",
          "locationType": "default",
          "uniqueId": "Conf Room Rainier",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Engineering",
              "address": "engineering@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Irvin Sayers",
              "address": "IrvinS@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Engineering",
            "address": "engineering@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEh8wxLg==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKyAAA=",
        "subject": "Latin American Product Manual Group",
        "bodyPreview":
            "Focus group to evaluate and update product manuals in South and Central AmericaYou're receiving this message because you're a member of the Engineering group. If you don't want to receive any messages or events from this group, stop following it in ",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Focus group to evaluate and update product manuals in South and Central America<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Engineering</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-20T21:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2015-01-05T22:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Mt. Adams",
          "locationType": "default",
          "uniqueId": "Mt. Adams",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Engineering",
              "address": "engineering@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Ben Walters",
              "address": "BenW@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Engineering",
            "address": "engineering@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFDaA==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKxAAA=",
        "subject": "DG2000 Data Sheets",
        "bodyPreview":
            "Hello Engineering team. With the upcoming launch, let's plan an ongoing touchpoint to discuss progress.You're receiving this message because you're a member of the Engineering group. If you don't want to receive any messages or events from this grou",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Hello Engineering team. With the upcoming launch, let's plan an ongoing touchpoint to discuss progress.<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Engineering</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/engineering@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-18T21:30:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2014-11-18T23:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Mt. Hood",
          "locationType": "default",
          "uniqueId": "Mt. Hood",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Engineering",
              "address": "engineering@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Lee Gu",
              "address": "LeeG@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Engineering",
            "address": "engineering@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFDaw==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKwAAA=",
        "subject": "Online Marketing Weekly Sync",
        "bodyPreview":
            "In the event of a schedule conflict we will be recording the meeting so you can view it later. Please communicate any information you would share during the meeting to your supervisor/manager prior.You're receiving this message because you're a memb",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>In the event of a schedule conflict we will be recording the meeting so you can view it later. Please communicate any information you would share during the meeting to your supervisor/manager prior.<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Marketing</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-03T18:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2014-11-03T18:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Online",
          "locationType": "default",
          "uniqueId": "Online",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Marketing",
              "address": "Marketing@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Lynne Robbins",
              "address": "LynneR@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Marketing",
            "address": "Marketing@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFDbw==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKvAAA=",
        "subject": "Cloud and Mobile Working Group",
        "bodyPreview":
            "Monthly touchpoint to discussYou're receiving this message because you're a member of the Marketing group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View group conversations   |   View g",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Monthly touchpoint to discuss<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Marketing</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-08T19:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2015-01-08T20:00:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Online",
          "locationType": "default",
          "uniqueId": "Online",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Marketing",
              "address": "Marketing@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Isaiah Langer",
              "address": "IsaiahL@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Marketing",
            "address": "Marketing@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFDcw==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKuAAA=",
        "subject": "Cloud and Mobile Professionals",
        "bodyPreview":
            "Moble and cloud monthly professional group. Let Isaiah know if you would like to attend.You're receiving this message because you're a member of the Marketing group. If you don't want to receive any messages or events from this group, stop following",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Moble and cloud monthly professional group. Let Isaiah know if you would like to attend.<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Marketing</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-12T02:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2014-11-12T04:00:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "2345 5th St. Suite M, Redmond WA. 89052",
          "locationType": "default",
          "uniqueId": "2345 5th St. Suite M, Redmond WA. 89052",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Marketing",
              "address": "Marketing@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Isaiah Langer",
              "address": "IsaiahL@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Marketing",
            "address": "Marketing@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFDeA==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKtAAA=",
        "subject": "Server Upgrades",
        "bodyPreview":
            "Hello Online Marketing team. We will be conducting server upgrades and infrastructure improvements.You're receiving this message because you're a member of the Marketing group. If you don't want to receive any messages or events from this group, sto",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Hello Online Marketing team. We will be conducting server upgrades and infrastructure improvements.<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Marketing</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-10T16:00:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2015-01-11T01:00:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Server Room",
          "locationType": "default",
          "uniqueId": "Server Room",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Marketing",
              "address": "Marketing@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Johanna Lorenz",
              "address": "JohannaL@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Marketing",
            "address": "Marketing@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wAEeDFHEQ==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKsAAA=",
        "subject": "Responsive Design Kick-Off Meeting",
        "bodyPreview":
            "Kick-Off meeting for the Responsive Design ProjectYou're receiving this message because you're a member of the Marketing group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View group conve",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Kick-Off meeting for the Responsive Design Project<div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Marketing</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/Marketing@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-08T18:30:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2015-01-08T19:00:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Mt. Adams",
          "locationType": "default",
          "uniqueId": "Mt. Adams",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Marketing",
              "address": "Marketing@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Isaiah Langer",
              "address": "IsaiahL@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Marketing",
            "address": "Marketing@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wADW1wcFA==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKrAAA=",
        "subject": "Forecasting",
        "bodyPreview":
            "You're receiving this message because you're a member of the Product Launch Event group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View group conversations   |   View group files",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body><div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Product Launch Event</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-02T17:30:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2016-11-02T18:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Conf Room Rainier",
          "locationType": "default",
          "uniqueId": "Conf Room Rainier",
          "uniqueIdType": "private"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Product Launch Event",
              "address": "productlaunchevent@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Henrietta Mueller",
              "address": "HenriettaM@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Lidia Holloway",
              "address": "LidiaH@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Emily Braun",
              "address": "EmilyB@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Product Launch Event",
            "address": "productlaunchevent@M365x214355.onmicrosoft.com"
          }
        }
      },
      {
        "@odata.etag": "W/\"IiLKjG2I7E+Xv0+ys6MD0wADW1wcFg==\"",
        "id":
            "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKqAAA=",
        "subject": "Usability Reporting Review",
        "bodyPreview":
            "You're receiving this message because you're a member of the Product Launch Event group. If you don't want to receive any messages or events from this group, stop following it in your inbox.View group conversations   |   View group files",
        "body": {
          "contentType": "html",
          "content":
              "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body><div id=\"a59ada49-a492-4f1d-ac57-74be3a4194fc\" style=\"display:inline-block\"><table cellspacing=\"0\" style=\"table-layout:fixed; width:50px; border:0 none black\"><tbody><tr><td style=\"height:18px; padding:0; border-width:0 0 1px 0; border-style:none none solid none; border-color:#EAEAEA\">&nbsp;</td></tr></tbody></table><table cellspacing=\"0\" style=\"table-layout:fixed; width:90%; line-height:17px; border:0 none black\"><tbody><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; color:#666666; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">You're receiving this message because you're a member of the <a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">Product Launch Event</a> group. If you don't want to receive any messages or events from this group,<a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=unsubscribe\" id=\"BD5134C6-8D33-4ABA-A0C4-08581FDF89DB\" style=\"color:#0072C6; text-decoration:none; font-size:12px; font-family:'Segoe UI Semibold','Segoe WP Semibold','Segoe UI','Segoe WP',sans-serif\">stop following it in your inbox</a>.</td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr><tr><td style=\"padding:0; border:0 none black; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\"><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=conversations\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group conversations</a></span><span style=\"color:#C8C8C8\">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><span style=\"display:inline-block\"><a href=\"https://outlook.office365.com/owa/productlaunchevent@M365x214355.onmicrosoft.com/groupsubscription.ashx?realm=M365x214355.onmicrosoft.com&amp;source=EscalatedMessage&amp;action=files\" style=\"color:#666666; text-decoration:none; font-size:12px; font-family:'Segoe UI','Segoe WP',sans-serif\">View group files</a></span></td></tr><tr><td style=\"height:17px; padding:0; border:0 none black\">&nbsp;</td></tr></tbody></table></div></body></html>"
        },
        "start": {"dateTime": "2023-07-03T21:30:00.0000000", "timeZone": "UTC"},
        "end": {"dateTime": "2014-11-03T22:30:00.0000000", "timeZone": "UTC"},
        "location": {
          "displayName": "Conf Room Rainier",
          "locationType": "default",
          "uniqueId": "Conf Room Rainier",
          "uniqueIdType": "privsate"
        },
        "attendees": [
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Product Launch Event",
              "address": "productlaunchevent@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Patti Fernandez",
              "address": "PattiF@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Grady Archie",
              "address": "GradyA@M365x214355.onmicrosoft.com"
            }
          },
          {
            "type": "required",
            "status": {"response": "none", "time": "0001-01-01T00:00:00Z"},
            "emailAddress": {
              "name": "Emily Braun",
              "address": "EmilyB@M365x214355.onmicrosoft.com"
            }
          }
        ],
        "organizer": {
          "emailAddress": {
            "name": "Product Launch Event",
            "address": "productlaunchevent@M365x214355.onmicrosoft.com"
          }
        }
      }
    ],
    "@odata.nextLink":
        "https://graph.microsoft.com/v1.0/me/events?%24select=subject%2cbody%2cbodyPreview%2corganizer%2cattendees%2cstart%2cend%2clocation&%24top=10&%24skip=10"
  };

  void parseJson() {
    calendarModel = CalendarModel.fromJson(data);
    calendarModel?.value.forEach((element) {
      print("timeApi =" + element.start.dateTime.toString());
      startDayList.addAll({
        element.start.dateTime.day.toString() +
            element.start.dateTime.month.toString() +
            element.start.dateTime.year.toString(): [2]
      });
    });

    calendarModel?.value.forEach((element) {
      valueTemp.add(element);
    });
    //  print("stardateList= " + startDayList!.length.toString());
  }

  DateTime focusedDay = DateTime.parse("2023-07-12");
  final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

  List<int> getEventsForDay(DateTime day) {
    return startDayList[
            day.day.toString() + day.month.toString() + day.year.toString()] ??
        [];
  }
}

final kToday = DateTime.now();
