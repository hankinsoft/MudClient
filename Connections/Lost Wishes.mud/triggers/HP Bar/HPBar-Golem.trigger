{
  "matchString" : "HP: (\\d+)\/(\\d+)  SP: (\\d+)\/(\\d+)  CON: (\\d+)\/(\\d+)  PWR: (\\d+)\/(\\d+)  GXP:(\\d+)%  BST:(\\d+)\\s+([a-z\\[\\]]+)?\nA:(\\d+) M:(\\d+) P:(\\d+) Fi:(\\d+) Fr:(\\d+) E:(\\d+)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Example:\n\/\/ HP: 202\/202  SP: 115\/20  CON: 120\/120  PWR: 1000\/1000  GXP:0%  BST:0  \n\/\/ A:0 M:0 P:0 Fi:0 Fr:0 E:0\n\n\/\/ Note: Golem hp bars are multiline\nvar currentHP = \\1;\nvar maxHP = \\2;\nvar currentSP = \\3;\nvar maxSP = \\4;\n\nvar mobHealth = '\\11'.replace(\/[[\\]]\/g,'');\n\nif(0 == mobHealth.length || 'none' == mobHealth)\n{\n  setValue('inCombat', false);\n}\nelse\n{\n  setValue('inCombat', true);\n}\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Golem",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}