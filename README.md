<div align="center">
	<h1> LazyNvim </h1>
	<span> • </span>
	<a href="https://github.com/grammenoudis/LazyNvimNvim/#installation">📦 Installation</a>
  <span> • </span>
	<a href="https://github.com/grammenoudis/LazyNvimNvim/wiki">📚 Wiki</a>
</div>

## Preview

![LazyNvim Dashboard](https://i.imgur.com/uPWPPyP.png)
![LazyNvim Demo](https://i.imgur.com/9ftNxYJ.png)

## Installation

To **Install** neovim run this command:
(make sure you have git and bash installed before running)

```bash
curl -s https://raw.githubusercontent.com/grammenoudis/LazyNvim/main/install.sh | bash -s
```

**OR**
Install it manually by:

-Optional: Backup existing nvim config (UNIX)

```bash
mv $HOME/.config/nvim $HOME/.config/nvim.old
```

-Mandatory

1. Cloning the repository

```bash
git clone https://github.com/grammenoudis/LazyNvim.git
```

2. Installing the Plugins

```bash
nvim +PackerSync
```
