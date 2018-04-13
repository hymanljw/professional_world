# professional_world 初始化
## 克隆项目，然后进入项目目录
`cd professional_world/`
## 1.是否安装了rvm ruby 环境
```
rvm list
ruby -v 
```
#=> ruby 2.3.4p301 (2017-03-30 revision 58214) [x86_64-linux] <br/>   
`rvm gemset list` <br/>   
#=> professional_world_pro
## 2.然后安装gem
```
gem install bundler
bundle install
```
## 3.迁移数据库,并生成种子数据
```
rake db:create
rake db:migrate
rake db:seed
```
## 4.运行开发环境
`rails s`
## 5.浏览器访问
`127.0.0.1:3000`