# Installation
This uses ansible to symlink dotfiles, install deps, configure some stuff...

```
pip install ansible
ansible-playbook env.yml
```

## Linting playbook
```
ansible-lint env.yml
```
