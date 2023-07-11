## This's Template Project!
## Happy Life! Happy Coding!

## 如何使用？

把下面这段代码加到 ` ~/.bash_profile ` 以后需要新建一个模块 只需要` createmoduleobject projectName（工程名）` 就可以了

```
createmoduleobject() {
  git clone http://121.40.102.80:8888/businessmodule/scbusinessmoduletemplate.git $1
  cd $1
  python create.py $1
}

```
如果本地`.bash_profile`文件不存在，则新建一个

```
打开终端
cd ~/
touch .bash_profile

```
这样文件就创建了，然后复制内容黏贴进去就可以了 

如果您装了`oh my zsh`，那么把以上内容复制黏贴到`.zshrc`最后就ok了。

##注意事项
目前文件目录是根据实际情况建了个比较常规的（Classes和Resources），如果是需要通过pod来集成代码类，是需放到对应的文件夹目录下，不需要的则放在这两个文件夹外面。如需改动文件夹目录，则需要修改对应的`podspec`文件。如需用到别的功能模块工程，则通过Podfile文件集成。

podspec文件学习连接：https://guides.cocoapods.org/syntax/podspec.html
