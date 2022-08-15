{
  "matchString" : "\\(\\(Acolytes\\)\\)\\s+(.*?(?=\\n(?!    )))",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ ((Acolytes)) Zenox: hello\nvar message = '\\1';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.trim();\nmessage = '[acolytes] ' + message;\n\naddComm(message);",
  "title" : "COMM-Acolyte",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}