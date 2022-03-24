# Terragrunt oh-my-zsh plugin

ZSH completion plugin for [Terragrunt](https://github.com/gruntwork-io/terragrunt), a thin wrapper for Terraform that provides extra tools.

Current as of Terraform v1.1.x.

This is based on [hanjunlee's terragrunt-oh-my-zsh-plugin](https://github.com/hanjunlee/terragrunt-oh-my-zsh-plugin), so all credit goes to him, I have just updated the command list to current Terraform/Terragrunt version.

Since that repository hasn't been updated for years and is now archived, I decided to make my own repo instead of forking it since forking has its downsides.

## Requirements

- [Terraform](https://terraform.io/)
- [Terragrunt](https://github.com/gruntwork-io/terragrunt)

## Installation

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`):

```bash
git clone https://github.com/jkavan/terragrunt-oh-my-zsh-plugin ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/terragrunt
```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

```bash
plugins=(terragrunt)
```

3. Start a new terminal session or reload zsh configs: `source ~/.zshrc`

## Features

- When you typed `terragrunt` into your prompt and hit `TAB` to see available completion options

- When you typed `-target` option into your prompt and hit `TAB` to see available resource list.

```bash
$ terragrunt plan -target               # hit TAB
aws_db_instance.baz  aws_iam.bar          aws_iam.foo
...                                     # show resource list
```

- Alias `terragrunt` command as `tg`.

## Expanding ZSH prompt with current Terraform workspace name

If you want to get current Terraform workspace name in your ZSH prompt open
your .zsh-theme file and in a chosen place insert:

```bash
$FG[045]\
$(tg_prompt_info)\
```
