# Terminal Setup

## Tutorials
✍🏼 Blog Post Step-by-Step Guide: [How To Setup Your Mac Terminal](https://josean.com/posts/terminal-setup)

📹 Youtube Guide: [How To Make Your Boring Mac Terminal So Much Better](https://www.youtube.com/watch?v=CF1tMjvHDRA&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&index=2&t=479s)

## Steps
### iTerm2
#### [1. Installation](https://iterm2.com/downloads.html)
#### 2. Profile
- Keep `Default` profile intact, create a new one and use this profile.

### ZSH
#### 1. Installation
```bash
brew install zsh
```

### OH-MY-ZSH
#### 1. Installation
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Theme
#### [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
##### [1. Installation](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
##### 2. Font
- In iTerm2, if text doesn't look right, open *iTerm2 → Preferences → Profiles → Text* and set Font to `MesloLGS NF` (recommended font).

#### iTerm2
Visit online gallery in `Color Presets`, download and import the desired theme:
- [Sea Shells](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/SeaShells.itermcolors) is quite beautiful

### ZSH Plugins
#### 1. zsh-autosuggestion
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
#### 2. zsh-syntax-highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
- Open `~/.zshrc` file and modify `plugins` line:
```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```
- Reload zsh
```bash
source ~/.zshrc
```
