## Terragrunt oh-my-zsh plugin

Plugin for Terragrunt, a thin wrapper for Terraform that provides extra tools.

Current as of Terraform v0.18.3

### Requirements

 * [Terraform](https://terraform.io/)
 * [Terragrunt](https://github.com/gruntwork-io/terragrunt)

### Installation
1. Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)
```bash
git clone https://github.com/hanjunlee/terragrunt-oh-my-zsh-plugin ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/terragrunt
```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
```bash
plugins=(terragrunt)
```

3. Start a new terminal session.

### Features

* When you typed `terragrunt` into your prompt and hit `TAB` to see available completion options

* When you typed `-target` option into your prompt and hit `TAB` to see available resource list.
```bash
$ terragrunt plan -target               # hit TAB
aws_db_instance.baz  aws_iam.bar          aws_iam.foo 
...                                     # show resource list
```

* Alias `terragrunt` command as `tg`.

### Expanding ZSH prompt with current Terraform workspace name

If you want to get current Terraform workspace name in your ZSH prompt open
your .zsh-theme file and in a chosen place insert:
```
$FG[045]\
$(tg_prompt_info)\
```