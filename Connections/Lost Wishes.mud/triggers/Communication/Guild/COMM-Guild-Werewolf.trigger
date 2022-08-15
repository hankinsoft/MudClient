{
  "matchString" : "\\[\\(\\{ Werewolves \\}\\)\\](.*?)(\\n[^\\s]|$)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var message = '\\0';\n\n\/\/ Fix up multiline messages.\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.replace('({ Werewolves })', '');\nmessage = message.trim();\nmessage = '[werewolf] ' + message;\n\naddComm(message);",
  "title" : "COMM-Guild-Werewolf",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}