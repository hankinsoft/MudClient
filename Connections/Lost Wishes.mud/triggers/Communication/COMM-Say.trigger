{
  "matchString" : "([()a-z 0-9']+)\\s(says|asks|exclaims):.*?(?=\\n(?!    ))",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "var channel = 'say';\nvar who = '\\1';\n\nvar message = '\\0';\n\nmessage = message.replaceAll(\"\\n    \", \" \");\nmessage = message.replace(\/^(\\s|>)+|(\\s|>)+$\/gm,'');\nmessage = message.trim();\n\nif(-1 != message.indexOf(\"I can't give you the full value of that item.\") ||\n   -1 != message.indexOf(\"Hello yourself.\") ||\n   -1 != message.indexOf('Hey there, what can I do for you.') ||\n   -1 != message.indexOf('I interest you in a torch') ||\n   -1 != message.indexOf('You can buy these items') ||\n   -1 != message.indexOf('Yuglere ') ||\n   -1 != message.indexOf('Guard exclaims') ||\n\n   -1 != message.indexOf('Man exclaims') ||\n   -1 != message.indexOf('Man says') ||\n\n   -1 != message.indexOf('Woman exclaims') ||\n   -1 != message.indexOf('Woman says') ||\n\n   -1 != message.indexOf('Necromancer novice') ||\n   -1 != message.indexOf('Necromancer fellow') ||\n   -1 != message.indexOf('Necromancer apprentice') ||\n\n   -1 != message.indexOf('Thaumaturge fellow') ||\n   -1 != message.indexOf('Thaumaturge fellow') ||\n\n   -1 != message.indexOf('has no value!')\n)\n{\n\treturn;\n}\n\naddComm('[say] ' + message);",
  "title" : "COMM-Say",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}