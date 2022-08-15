{
  "matchString" : ">>>[a-z]+Elem<<<(.*?)(\\n[^\\s]|$)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Example: >>>AirElem<<< Bars: test\nvar message = '\\0';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.replace('AirElem<<<', '');\nmessage = message.trim();\nmessage = '[element] ' + message;\n\naddComm(message);",
  "title" : "COMM-Guild-Elemental",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}