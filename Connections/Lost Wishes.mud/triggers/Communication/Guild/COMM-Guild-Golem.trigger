{
  "matchString" : "(-=:\\(([^)]+)\\):=-).*?(?=\\n(?!    ))",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var guild = '\\1';\nvar who = '\\2';\nvar message = '\\0';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(guild, \"\");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.trim();\nmessage = '[golem] ' + who + ': ' + message;\n\naddComm(message);",
  "title" : "COMM-Guild-Golem",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}