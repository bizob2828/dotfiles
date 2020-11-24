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
Import `iterm-settings.itermkeymap` and `com.googlecode.iterm2.plist` into iTerm2
