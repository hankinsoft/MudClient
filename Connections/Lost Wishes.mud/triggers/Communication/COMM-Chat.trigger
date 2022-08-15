{
  "matchString" : "\\[([a-zA-Z ]+)\\]\\s+([a-z -]+):?.*?(?=\\n(?!    ))",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "var channel = '\\1';\nvar who = '\\2';\nvar message = '\\0';\n\nmessage = message.replaceAll(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.trim();\n\nif(!(channel == 'game' && who == 'Lotto'))\n{\n\tlog(channel);\n\tlog(who);\n\n\taddComm(message);\n    processForAutocomplete(who);\n}",
  "title" : "COMM-Chat",
  "matchCaseSpecific" : false,
  "actionType" : 1,
  "isDebug" : false,
  "matchSource" : 0
}