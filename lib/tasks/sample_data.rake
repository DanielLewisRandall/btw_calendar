require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Daniel Randall",
                 :email => "daniel@otherwhitenoise.com",
                 :password => "Pelican$",
                 :password_confirmation => "Pelican$")
    
    admin.toggle!(:admin)	

    other = User.create!(:name => "Paula Randall",
                 :email => "pmrandall09@gmail.com",
                 :password => "PowerfulPelican$",
                 :password_confirmation => "PowerfulPelican$")
    
    other.toggle!(:admin)	

  end
end
