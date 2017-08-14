# rails-blog

Ruby on Railsによるブログアプリケーションのサンプルです  

## Description
Ruby on Rails学習の為に作成  

Herokuにデプロイしています [>>heroku app](https://yir-rails-blog.herokuapp.com/ "heroku")  
※herokuのClearDBではAUTO_INCREMENT_INCREMENTが10に設定される為、idが10ずつ増加します

## How to Installation & Get started
```bash
$ git clone https://github.com/yirr/rails-blog.git
$ cd rails-blog
$ bundle install
$ rake db:create
$ rake db:migrate
$ rails s
```

## Version
### Ruby  
* 2.4.1
### Rails
* 5.0.5
### Database  
* MySQL 5.7
