{
  "matchString" : "\\{\\(Engineer\\)\\}\\s+(.*?)(\\n[^\\s]|$)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var message = '\\1';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.trim();\nmessage = '[engineer] ' + message;\n\naddComm(message);",
  "title" : "COMM-Guild-Engineer",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}