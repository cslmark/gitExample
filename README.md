# gitExample
Example for testing git common!
# 常用的git命令
* 设置git
  git config --global user.name  "Your Name"
  git config --global user.email "email@example.com"

* 提交相关
  git add fileName(folderName)
  git add .   <指的当前目录的所有文件及其子文件>
  git commit -m"blablablablabla"
  git push origin  branch-Name
  git diff HEAD -- fileName  [比如ReadMe.txt]
  
* 版本回退
  git log
  git reflog
  git reset --hard HEAD^
  git reset --hard commit_id
  
* 撤销修改
  git checkout -- file    [可以放弃工作区的修改]
  >一种是readme.txt自修改后还没有被放到暂存区，现在，撤销修改就回到和版本库一模一样的状态；
  >一种是readme.txt已经添加到暂存区后，又作了修改，现在，撤销修改就回到添加到暂存区后的状态。
  git reset HEAD file     [可以把暂存区的放到工作区]
  rm file  ===>   git rm  file   [把版本库的内容也删除]
  rm file  ===>   git checkout -- fileName  [恢复被误删的文件]
  
* 远程克隆仓库
  git clone
  
* 分支管理
  git branch   [查看分支]
  git branch <name>  [新建分支]
  git checkout <name>  [切换分支]
  git checkout -b <name>  [创建和切换分支]
  git merge <name>  [合并分支]
  git branch -d <name> [删除分支]
  git log -- graph [分支合并图]
  git merge --no-ff -m "blablablabla" <name>   [合并分支，不使用Fast forward]
  
 * 多人协作
   git remote [查看远程仓库的信息]
   git remote -v
   git push origin <name>   [推送分支]
   git checkout -b dev origin/dev  [创建远程的分支到本地]
   git branch --set-updtream dev origin/dev  [建立本地和远程的关系]
   git pull
   
 * tag的创建和使用
   git tag <name>  [创建tag]
   git tag  [查看所有tag]
   git tag name commitID  [创建对应的tag]
   git show tagName [显示指定tag的信息]
   git push origin <tagName>   [推送本地的tag]
   git push origin --tags [推送本地所有未推送过的tag]
   git tag -d <tagname>   [删除一个本地的标签]
   git push origin :refs/tags/tagname  [删除远程tag]
   
*  配置别名
   $ git config --global alias.co checkout
   $ git config --global alias.ci commit
   $ git config --global alias.br branch




