# zapier-action

GitHub Action for [Zapier](https://zapier.com).

## Usage

```hcl
workflow "Build and Validate" {
  on = "push"
  resolves = ["Validate"]
}

action "Build" {
  uses = "actions/npm@master"
  args = "install"
}

action "Validate" {
  needs = "Test"
  uses = "Frameio/zapier-action@master"
  args = "validate"
  secrets = ["ZAPIER_DEPLOY_KEY"]
}
```

The `ZAPIER_DEPLOY_KEY` is required to execute most Zapier commands. In order to generate a key, please run `zapier login` from your local machine, and locate the `deployKey` in `~/.zapierrc`.
