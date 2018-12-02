# 分享一些配置文件设置

## vim

.vimrc 是一个最精简的无插件的vim配置方案，适合基础的开发、文档需求

## zsh
.zsh 是一个精简的zsh配置方案

### 1、安装zsh
选一个合适的主题，当然之后vim的风格需要单独配置的;
:version  可以看到.vimrc文件的加载顺序，因此也是可以在项目里面设定的

### 2、git config 设置
举例:git config --global alias.st status

### 3、命令行工具们
```
// 部分工具需要比较新的vim版本，建议开始就重装
brew install vim
auto suggestions
brew install keychain
brew install ack
brew install tree
brew install fzf
// you complete me 的安装需要先安装cmake
brew install cmake

nrm
fanyi
https://github.com/zsh-users/zsh-autosuggestions
https://linux.die.net/man/1/ack
https://beyondgrep.com/install/
http://www.cnblogs.com/fnlingnzb-learner/p/9585219.html
https://www.jianshu.com/p/bb91582317ed
https://segmentfault.com/a/1190000011328080
```

### 4、vim配置
* 详见代码中注释
* https://www.cnblogs.com/oloroso/p/4670165.html
* https://github.com/junegunn/vim-plug

5、TODO
* 快速缩进
