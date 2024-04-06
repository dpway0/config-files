# INSTALL GUIDE

## Common Apps

```txt
flameshot
raycast
openvpn
rustdesk
telegram
vmware horizion client
zed
```

## Brew

### Firefox

```bash
brew tap homebrew/cask-versions
brew install homebrew/cask-versions/firefox-developer-edition
```

### From file

```bash
xargs brew install < brew-apps.txt
xargs brew install --cask < brew-apps-cask.txt
```

## NPM

```bash
# check version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.zshrc
nvm -v
nvm install 20
npm install -g lite-server http-server license gitconfig
npm install -g npm
```

## VSCode

```bash
cat vscode-extensions.txt| xargs -L1 code --install-extension
```

## ZSH plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add to plugins in .zshrc: zsh-autosuggestions
```
