# README

Rails new appname

# Rails Console is important tools to Crud operation
1.rails console
*Articale.all # To see all data
*article = Article.new or Article.create #To created data
*article =Artcle.find(2) # To Edit Data
#article = Article.find(2) find and Article.distory # for deleting data

# Rails Migration creating

example: rails generate migrate create_articles
  rails db:migrate,
  rails db:rollback
# Drop Table from SQL

just run into the console

rails console
and type in

ActiveRecord::Migration.drop_table(:users)
and then exit the console and

rake db:migrate
