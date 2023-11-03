# add-to-omz plugin

This plugin adds the `add2omz` command that can be used to easily and simply install OhMyZsh plugins and themes from GitHub by simply specifying whether you are adding a theme or plugin and the repo's git URL, along with an option `--name` parameter to specify the name of the directory you save to within the `.oh-my-zsh/custom/*` directory.

<div style="display: flex; flex-direction: column; margin-bottom: -3%; margin-top: -2%;">
<h3 style="margin-bottom: 3px;">Join me here:</h3>
<h3 style="margin-top: 3px;">

[OWLsec Community Discord Server](https://discord.gg/owlsec)</h3>
</div>

- **This server is for anyone with an interest in Programming or CyberSecurity!**

## Plugin Information

|          |                                                 |
| :------: | :---------------------------------------------: |
| Plugin:  |                  **add-to-omz**                  |
| Author:  |                   **Doc0x1**                    |
|  Type:   | [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) |
| Version: |                    **1.1**                    |
| License: |                     **MIT**                     |
|          |                                                 |

## Installation

`git clone --depth=1 https://github.com/Doc0x1/add-to-omz "$ZSH/custom/plugins"`

Be sure to add the plugin to your plugins in .zshrc

```
plugins=(... add-to-omz)
```

## Syntax

`add2omz [--type type] [--url git-repo-url] [options]`

## Usage

`add2omz --type plugin --url https://github.com/Doc0x1/add-to-omz --name add-to-omz`
