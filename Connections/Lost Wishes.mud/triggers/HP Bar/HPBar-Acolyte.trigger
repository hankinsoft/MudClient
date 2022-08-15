{
  "matchString" : "HP:\\s+(\\d+)\\((\\d+)\\)   SP: (\\d+)\\((\\d+)\\)   DF: (\\d+)\\((\\d+)\\)   Aff: [a-z]+   FP: (\\d+)",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Example: HP: 558(558)   SP: 494(494)   DF: 705(705)   Aff: None   FP: 0\nvar currentHP = \\1;\nvar maxHP     = \\2;\nvar currentSP = \\3;\nvar maxSP     = \\4;\n\nvar currentDF = \\5;\nvar maxDF     = \\6;\n\nvar fp        = \\7;\n\n\/\/ No current mobHealth in acolyte hp prompt\nvar mobHealth = '';\n\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\nstatusDisplay += ' DF: ' + currentDF + '\/' + maxDF;\nstatusDisplay += ' FP: ' + fp;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Acolyte",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : true,
  "matchSource" : 0
}