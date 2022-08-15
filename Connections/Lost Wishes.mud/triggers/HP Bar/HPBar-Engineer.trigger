{
  "matchString" : "HPS:\\s+(\\d+)\\((\\d+)\\)\\s+SPS:\\s+(\\d+)\\((\\d+)\\)  GPS: (\\d+)\\((\\d+)\\)\\s+GXP:\\s+(\\d+)%\\s+TAR:\\s+(\\w+)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Examples: HPS: 30(116)  SPS: 72(72)  GPS: 18(20)  GXP: 99%  TAR:  Nobody \nvar currentHP = \\1;\nvar maxHP     = \\2;\nvar currentSP = \\3;\nvar maxSP     = \\4;\nvar mobHealth = '\\8'.replace(\/[[\\]]\/g,'');\n\nif(mobHealth == 'Nobody')\n{\n    mobHealth = '';\n}\n\nif(0 == mobHealth.length || 'none' == mobHealth)\n{\n  setValue('inCombat', false);\n}\nelse\n{\n  setValue('inCombat', true);\n}\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Engineer",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}