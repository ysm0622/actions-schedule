workflow "Run everyday" {
  on = "schedule(0 0 * * *)"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  args = "i"
  secrets = ["GITHUB_TOKEN"]
}
