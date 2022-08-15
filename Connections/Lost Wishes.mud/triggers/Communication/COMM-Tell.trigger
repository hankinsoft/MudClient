{
  "matchString" : "([()a-z]+)\\stells\\s+[a-z, ]+:\\s+([^\\n]+)",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "addComm('[tell] ' + '\\0');\nprocessForAutocomplete('\\2');",
  "title" : "COMM-Tell",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}