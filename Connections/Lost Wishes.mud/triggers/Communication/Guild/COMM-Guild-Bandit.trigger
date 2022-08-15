{
  "matchString" : "\\(-- Bandit --\\)(.*?)(\\n[^\\s]|$)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var message = '\\0';\nvar end = '\\3';\n\n\/\/ Fix up multiline messages.\nmessage = message.substring(0, message.length - end.length);\nmessage = message.replace(\"\\n    \", \" \");\nmessage = message.trim();\nmessage = message.replace('(-- Bandit --) ', '');\n\naddComm(message);",
  "title" : "COMM-Guild-Bandit",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}