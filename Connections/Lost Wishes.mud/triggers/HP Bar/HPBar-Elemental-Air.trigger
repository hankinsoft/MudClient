{
  "matchString" : "HP: ([0-9]+)\\\/([0-9]+)\\s+SP: ([0-9]+)\\\/([0-9]+)\\s+Air: ([0-9]+)\\\/([0-9]+)\\s+GXP:\\s+\\(([0-9]+)%\\)\\s+Energy:\\s+([0-9]+)\\s+(\\[(perfect|scratched|injured|bruised|wounded|bloody|dying|none)\\])?",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Example: HP: 105\/105  SP: 99\/99  Air: 5000\/5000  GXP: (0%)  Energy: 0  [scratched]\nvar currentHP = \\1;\nvar maxHP     = \\2;\nvar currentSP = \\3;\nvar maxSP     = \\4;\nvar energy    = \\8;\nvar mobHealth = '\\9'.replace(\/[[\\]]\/g,'');\n\nsetValue('currentHP', currentHP);\nsetValue('maxHP', maxHP);\nsetValue('currentSP', currentSP);\nsetValue('maxSP', maxSP);\n\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\nstatusDisplay += ' E: ' + energy;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Elemental-Air",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}