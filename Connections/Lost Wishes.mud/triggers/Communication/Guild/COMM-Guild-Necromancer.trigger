{
  "matchString" : "\\{\\[NECRO\\]\\}\\s+.*?(?=\\n(?!    ))",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var message = '\\0';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.replace('{[NECRO]}', '');\nmessage = message.trim();\nmessage = '[necro] ' + message;\n\naddComm(message);",
  "title" : "COMM-Guild-Necromancer",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}