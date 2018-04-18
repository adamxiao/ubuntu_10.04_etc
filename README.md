ubuntu_10.04_etc
================

the /etc directory data in ubuntu 10.04 LST amd64

# start to add /etc data to github

# only save vim config files and bash config files

## 1. bashrc配置

```bash
echo "[[ -s ~/.adam_bashrc ]] && . ~/.adam_bashrc" >> ~/.bashrc
echo 'export LANGUAGE="en"' >> ~/.profile
echo 'export LANG="en_US.utf8"' >> ~/.profile
```

## 2. vimrc配置

```bash
ctags -R -f ~/.vim/systags --c-kinds=+p --c++-kinds=+px --fields=+iaS --extra=+q --languages=c,c++ /usr/include
```

## 3. gitconfig配置

```
[user]
	name = Adam Xiao
	email = iefcuxy@gmail.com
[alias]
	st = !git status -s
	co = !git checkout
	ci = !git commit
	di = !git difftool -t vimdiff
```
可能额外需要添加代理配置
```
[https]
	proxy = http://dev-proxy.oa.com:8080
[http]
	proxy = http://dev-proxy.oa.com:8080
[push]
	default = simple
```

## 4. ssh配置
```
# connect the same server quickly
ControlMaster auto
ControlPath /tmp/ssh_mux_%h_%p_%r

Host xxx
    HostName www.xxx.com
    User xxx
    Port xxx
    IdentityFile xxx
```
