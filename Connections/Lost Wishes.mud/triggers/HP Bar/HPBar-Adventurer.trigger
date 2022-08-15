{
  "matchString" : "HP: ([0-9]+)\\\/([0-9]+) \\| SP: ([0-9]+)\\\/([0-9]+)(\\s\\|\\sTarget: (perfect|scratched|injured|bruised|wounded|bloody|dying|none))?",
  "matchType" : 1,
  "enabled" : 1,
  "matchFromStartOfLine" : true,
  "action" : "\/\/ Example: HP: 97\/97 | SP: 81\/81 | Target: wounded\nvar currentHP = \\1;\nvar maxHP     = \\2;\nvar currentSP = \\3;\nvar maxSP     = \\4;\nvar mobHealth = '\\6';\n\n\/\/ Store for use in other scripts.\nsetValue('currentHP', currentHP);\nsetValue('maxHP', maxHP);\nsetValue('currentSP', currentSP);\nsetValue('maxSP', maxSP);\nsetValue('mobHealth', mobHealth);\n\nif(0 == mobHealth.length || 'none' == mobHealth)\n{\n  setValue('inCombat', false);\n}\nelse\n{\n  setValue('inCombat', true);\n}\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Adventurer",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}