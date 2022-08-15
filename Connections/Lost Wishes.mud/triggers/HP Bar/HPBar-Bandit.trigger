{
  "matchString" : "HP: ([0-9]+)\\\/([0-9]+)\\s+SP: ([0-9]+)\\\/([0-9]+).+(perfect|scratched|injured|bruised|wounded|bloody|dying|none)",
  "matchType" : 1,
  "enabled" : 0,
  "matchFromStartOfLine" : true,
  "action" : "setValue('currentHP', \\1);\nsetValue('maxHP', \\2);\nsetValue('currentSP', \\3);\nsetValue('maxSP', \\4);\n\nvar mobHealth = '\\5';\n\n\/\/ Update our status bar\nvar statusDisplay = 'HP: ' + currentHP + '\/' + maxHP + ' SP: ' + currentSP + '\/' + maxSP;\n\nif(0 != mobHealth.length && 'none' != mobHealth)\n{\n    statusDisplay += ' (' + mobHealth + ')';\n}\n\nstatus(statusDisplay);",
  "title" : "HPBar-Bandit",
  "actionType" : 1,
  "caseSpecific" : false,
  "isDebug" : false,
  "matchSource" : 0
}