# Installation
This uses ansible to symlink dotfiles, install deps, configure some stuff...

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
ansible-playbook env.yml
```

## Linting playbook
```
ansible-lint env.yml
```

## Manual steps
 * [Remap Caps lock to escape](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwig-dmL3KPtAhXvt1kKHX9aDocQFjACegQIBRAC&url=https%3A%2F%2Fwww.jeffgeerling.com%2Fblog%2F2017%2Fremapping-caps-lock-key-escape-macos-sierra&usg=AOvVaw3GYqMsd5tKKMHw73AY_tMf)
 * Install Mac CLI tools: `xcode-select --install`
 * Create ssh key: `ssh-keygen -t rsa -b 4096`
 * Install homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
 * Bind Alfred prefs from `~/Dropbox/mac-stuff/Alfred.alfredpreferences`
 * [Install Meslo font](https://github.com/powerline/fonts/blob/master/Meslo%20Dotted/Meslo%20LG%20L%20DZ%20Regular%20for%20Powerline.ttf?raw=true), used for font in iTerm2
 * Disable the following keyboard shortcuts:
   * `System Preferences` > `Keyboard` > `Shortcuts` > `Spotlight` > `Show Spotlight Search Field`
   * `System Preferences` > `Keyboard` > `Shortcuts` > `Mission Control` > `Show Desktop`
