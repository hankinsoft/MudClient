{
  "matchString" : "HPS:\\s+([0-9]+)\/([0-9]+)\\s+SPS:\\s+([0-9]+)\/([0-9]+)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "var currentHP = \\1;\nvar maxHP     = \\2;\n\nsetValue('currentHP', currentHP);\nsetValue('maxHP', maxHP);\nsetValue('currentSP', \\3);\nsetValue('maxSP', \\4);\n\n\/\/ Update our status bar\nstatus('HP: ' + getValue('currentHP') + '\/' + getValue('maxHP') + ' SP: ' + getValue('currentSP') + '\/' + getValue('maxSP') );",
  "title" : "HPBar-Werewolf",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}