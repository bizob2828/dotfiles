# Installation
This uses ansible to symlink dotfiles, install deps, configure some stuff...

```sh
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Linting playbook
```
ansible-lint env.yml
```

## First Time Run Steps
 * Install Mac CLI tools: `xcode-select --install`
 * Install homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
 * Update ansible plugins `ansible-galaxy collection install community.general --upgrade`

## Run

```sh
ansible-playbook env.yml
```

## First Time Run Post Install Steps 
 * [Remap Caps lock to escape](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwig-dmL3KPtAhXvt1kKHX9aDocQFjACegQIBRAC&url=https%3A%2F%2Fwww.jeffgeerling.com%2Fblog%2F2017%2Fremapping-caps-lock-key-escape-macos-sierra&usg=AOvVaw3GYqMsd5tKKMHw73AY_tMf)
 * Create ssh key: `ssh-keygen -t rsa -b 4096`
 * `gpg --import ~/Dropbox/Public/gpg-keys`
 * Manually install [Tiley](https://github.com/yusuke/tiley)
 * Tiley hot keys: `shift` + `cmd` + `space` to open. `F` for full screen, `R` for right, and `L` for left.
 * Bind Alfred prefs from `~/Dropbox/mac-stuff/Alfred.alfredpreferences`
 * [Install Meslo font](https://github.com/powerline/fonts/blob/master/Meslo%20Dotted/Meslo%20LG%20L%20DZ%20Regular%20for%20Powerline.ttf?raw=true), used for font in iTerm2
 * Disable the following keyboard shortcuts:
   * `System Preferences` > `Keyboard` > `Shortcuts` > `Spotlight` > `Show Spotlight Search Field`
   * `System Preferences` > `Keyboard` > `Shortcuts` > `Mission Control` > `Show Desktop`
 * Disable notifications when sharing screen:
   * `System Preferences` > `Notifications & Focus` > `When mirroring or sharing the display`
 * Set up Alfred, Amphetamine, Tiley, Ice, and Itsycal to `Open at Login`: `System Preferences` > `General` > `Login Items` 
 * Add `bob-pc`, `linux-box`, and `pihole` to `/etc/hosts`.
