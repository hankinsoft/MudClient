{
  "matchString" : "You see:\\n(.*)\\n>",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : false,
  "action" : "\/\/ Find everything between 'you see' and the prompt and add it to the autocomplete list.\nvar temp = '\\1';\n\n\/\/ Find the prompt so we can process for autocomplete\nvar promptIndex = temp.indexOf('>');\nif(-1 !== promptIndex)\n{\n  temp = temp.substring(0, promptIndex);\n}\n\nprocessForAutocomplete(temp);",
  "title" : "Autocomplete-You see",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}