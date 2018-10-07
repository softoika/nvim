# Introduce Neovim with Dein and other plugins
## 0. Environment
- macOS (High Sierra)
- zsh

## 1. Install packages
```
$ brew update && brew install neovim pyenv
```
## 2. Install python 3
Install latest python3 stable version
```
$ pyenv install -l
$ pyenv install 3.7.0
$ pyenv global 3.7.0
```
Check current python version
```
$ python -V
Python 3.7.0
```

## 3. Install python neovim client
```
$ pip install neovim
```

## 4. Set python path to environment variable
```
$ echo "export NVIM_PYTHON3_HOST_PROG='`which python3`'" >> .zshrc
```
If you use bash, 
```
$ echo "export NVIM_PYTHON3_HOST_PROG='`which python3`'" >> .bashrc
```

## 5. Clone this repository to your .confing directory
```
$ mkdir ~/.config
$ cd ~/.config
$ git clone -b setup https://github.com/softoika/nvim
```

## 6. Open Neovim and update remote plugins
```
$ nvim +UpdateRemotePlugins
```
