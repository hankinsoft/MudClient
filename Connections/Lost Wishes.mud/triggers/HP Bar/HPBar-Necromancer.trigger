{
  "matchString" : "HP:\\s+([0-9]+)\\(([0-9]+)\\)\\s+SP:\\s+([0-9]+)\\(([0-9]+)\\) CP: ([0-9]+)\\s+[^\\(]+\\(([a-z]+)\\)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Examples: HP: 101(96) SP: 104(104) CP: 100  Victim: (NA)\n\/\/           HP: 101(96) SP: 104(104) CP: 100  Rat: (bloody)\nvar currentHP = \\1;\nvar maxHP     = \\2;\nvar currentSP = \\3;\nvar maxSP     = \\4;\nvar CP        = \\5;\n\nvar mobHealth = '\\6'.replace(\/[[\\]]\/g,'');\nif(mobHealth == 'NA')\n{\n    mobHealth = '';\n}\n\nif(0 == mobHealth.length || 'none' == mobHealth)\n{\n  setValue('inCombat', false);\n}\nelse\n{\n  setValue('inCombat', true);\n}\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\n\nstatusDisplay += ' CP: ' + CP;\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Necromancer",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}